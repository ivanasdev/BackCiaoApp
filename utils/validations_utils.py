

def validar_json(data):
    if not data:
        return {
            "status": "error",
            "message": "Se esperaba JSON válido"
        }, 400
    return None

def valid_param01(p1,p2):
    if not p1 or not p2:
        return {
            "status": "error",
            "message": "No hay datos validos"
        }, 400
    return None


def build_dynamic_url(base_url, id_user):
    return f"{base_url}/{id_user}"
