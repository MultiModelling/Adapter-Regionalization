import base64

import requests
import urllib.parse

from tno.regionalization_adapter.model.model import Model, ModelState
from tno.regionalization_adapter.types import RegionalizationAdapterConfig, ModelRunInfo

from tno.shared.log import get_logger
logger = get_logger(__name__)

class ESDLRegionalization(Model):

    def process_results(self, result):
        if self.minio_client:
            return result
        else:
            # TODO: human readable result
            return ''

    def process_path(self, path: str, base_path: str) -> str:
        if path[0] == '.':
            return base_path + path.lstrip('./')
        else:
            return path.lstrip('./')

    def run(self, model_run_id: str):
        model_run_info = Model.run(self, model_run_id=model_run_id)

        if model_run_info.state == ModelState.ERROR:
            return model_run_info

        config: RegionalizationAdapterConfig = self.model_run_dict[model_run_id].config
        url = config.reg_config.path + config.reg_config.endpoint
        print(url)

        input_esdl_bytes = self.load_from_minio(config.input_file_path, model_run_id)
        input_esdl_b64_bytes = base64.b64encode(input_esdl_bytes)
        input_esdl_b64_string = input_esdl_b64_bytes.decode('utf-8')

        data_post = {
                "esdl_b64": input_esdl_b64_string,
                "rules": config.rules,
                "to_scope": config.to_scope,
                "from_scope": config.from_scope,
                "year": config.year
            }

        # add optional fields
        if config.calculate_positions:
            data_post['calculate_positions'] = config.calculate_positions
            data_post['positions_distance'] = config.positions_distance

        if config.remove_non_regionalized_assets:
            data_post['remove_non_regionalized_assets'] = config.remove_non_regionalized_assets


        logger.info(f"Request: {str(data_post)}")
        response = requests.post(
            url,
            json=data_post
        )
        logger.info(f"Response: {str(response)} {str(response.text)}")

        if response.ok:
            esdl_str = response.text
            model_run_info = Model.store_result(self, model_run_id=model_run_id, result=esdl_str)
            return model_run_info
        else:
            return ModelRunInfo(
                model_run_id=model_run_id,
                state=ModelState.ERROR,
                reason=f"Error in run(): Regionalization API returned: {response.status_code} {response.reason}"
            )
