import requests
import urllib.parse

from tno.regionalization_adapter.model.model import Model, ModelState
from tno.regionalization_adapter.types import RegionalizationAdapterConfig, ModelRunInfo

# from esdl import esdl
# from esdl.esdl_handler import EnergySystemHandler

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
        data_post = {
                "esdl_b64": config.esdl_b64,
                "rules": config.rules,
                "to_scope": config.to_scope,
                "from_scope": config.from_scope,
                "year": config.year
            }

        print(data_post)
        response = requests.post(
            url,
            json=data_post
        )
        print(str(response.text))
        logger.info(f"Response: {str(response)}")

        if response.ok:
            #esdl_str = response.json()['energy_system']
            esdl_str = response.text
            model_run_info = Model.store_result(self, model_run_id=model_run_id, result=esdl_str)
            return model_run_info
        else:
            return ModelRunInfo(
                model_run_id=model_run_id,
                state=ModelState.ERROR,
                reason=f"Error in run(): Regionalization API returned: {response.status_code} {response.reason}"
            )
