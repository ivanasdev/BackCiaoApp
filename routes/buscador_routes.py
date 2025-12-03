
from flask import Blueprint, request, jsonify
from sqlalchemy import text
from utils.buscador_utils import buscar_alimentos_logic,buscar_alimentos_filter_logic
buscador_routes = Blueprint("buscador_routes", __name__)

path_api="/buscador_api/"


@buscador_routes.route(path_api + "test", methods=["POST"])
def test_db_ep():
    data_req = request.get_json(silent=True)
    return jsonify({"status": "error","data":data_req})



@buscador_routes.route(path_api + "buscar", methods=["POST"])
def buscar_alimentos():
    data = request.get_json(silent=True) or {}
    palabra = data.get("query")
  


    response, status = buscar_alimentos_logic(palabra)
    return jsonify(response)
    #return jsonify({"palabra":palabra})


@buscador_routes.route(path_api + "buscar_filter", methods=["POST"])
def buscar_alimentos_filters():
    data = request.get_json(silent=True) or {}

    energia   = data.get("energia") or None
    proteina  = data.get("proteina") or None
    lipidos   = data.get("lipidos") or None
    h_carbono = data.get("h_carbono") or None


    response, status = buscar_alimentos_filter_logic(energia, proteina, lipidos, h_carbono)
    return jsonify(response), status
