from flask import Flask
from flask_cors import CORS

from flask_dotenv import DotEnv
from flask_smorest import Api

from werkzeug.middleware.proxy_fix import ProxyFix

import requests

from tno.regionalization_adapter.settings import EnvSettings

api = Api()
env = DotEnv()


def create_app(object_name):
    """
    An flask application factory, as explained here:
    http://flask.pocoo.org/docs/patterns/appfactories/

    Arguments:
        object_name: the python path of the config object,
                     e.g. influxdbgraphs.api.settings.ProdConfig
    """
    from tno.shared.log import get_logger

    logger = get_logger(__name__)
    logger.info("Setting up app.")

    app = Flask(__name__)
    app.config.from_object(object_name)
    app.wsgi_app = ProxyFix(app.wsgi_app)

    env.init_app(app, env_file=".env")
    api.init_app(app)

    # Register blueprints.
    from tno.regionalization_adapter.apis.status import api as status_api
    from tno.regionalization_adapter.apis.model_api import api as model_api

    logger.info("Registering blueprints.")
    api.register_blueprint(status_api)
    api.register_blueprint(model_api)

    if EnvSettings.registry_endpoint():
        logger.info("Registering with MM Registry")

        # Register adapter to MM Registry
        registry_data = {"uri": "http://mmvib-etm-kpis-adapter:9202", "used_workers": 0, "name": "ETM_KPIS",
                         "owner": "localhost", "version": "1.0", "max_workers": 1}

        try:
            r = requests.post(EnvSettings.registry_endpoint(), json=registry_data)
            r.raise_for_status()
        except requests.exceptions.HTTPError as e:
            print(e.response.text)

    CORS(app, resources={r"/*": {"origins": "*"}})

    logger.info("Finished setting up app.")

    return app
