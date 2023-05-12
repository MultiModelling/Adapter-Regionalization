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
        # path = self.process_path(config.input_esdl_file_path, config.base_path)

        # input_esdl_bytes = self.load_from_minio(path, model_run_id)
        # input_esdl = urllib.parse.quote(input_esdl_bytes.decode('utf-8'), safe='')

        url = config.reg_config.path + config.reg_config.endpoint

        # logger.info(f"Input esdl_b64: {str(config.esdl_b64)}")
        # logger.info(f"Input rules: {str(config.rules)}")
        # logger.info(f"Input to_scope: {str(config.to_scope)}")
        # logger.info(f"Input from_scope: {str(config.from_scope)}")
        # logger.info(f"Input year: {str(config.year)}")

        # headers = {'Content-Type': 'application/x-www-form-urlencoded'}
        response = requests.post(
            url,
            data={
                'esdl_b64': config.esdl_b64,
                "rules": config.rules,
                "to_scope": config.to_scope,
                "from_scope": config.from_scope,
                "year": config.year
            }
        )
        logger.info(f"Response: {str(response)}")

        if response.ok:
            esdl_str = response.json()['energy_system']
            model_run_info = Model.store_result(self, model_run_id=model_run_id, result=esdl_str)
            return model_run_info
        else:
            return ModelRunInfo(
                model_run_id=model_run_id,
                state=ModelState.ERROR,
                reason=f"Error in run(): Regionalization API returned: {response.status_code} {response.reason}"
            )
