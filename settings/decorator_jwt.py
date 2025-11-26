from flask import request, jsonify
from functools import wraps

import jwt
from settings.jwt_set import decode_token


SECRET_KEY = "mi_clave_super_secreta"

def jwt_required(f):
    @wraps(f)
    def wrapper(*args, **kwargs):
        auth_header = request.headers.get("Authorization")

        # No viene el header
        if not auth_header:
            return jsonify({
                "status": "error",
                "message": "Token necesario"
            }), 401

        # Formato incorrecto (ejemplo: falta "Bearer")
        parts = auth_header.split()

        if len(parts) != 2 or parts[0].lower() != "bearer":
            return jsonify({
                "status": "error",
                "message": "Formato de autorización inválido. Usa: Bearer <token>"
            }), 400

        token = parts[1]

        # Intentar decodificar
        try:
            data = jwt.decode(token, SECRET_KEY, algorithms=["HS256"])
            request.user_id = data.get("user_id")
        except jwt.ExpiredSignatureError:
            return jsonify({
                "status": "error",
                "message": "Token expirado"
            }), 401
        except jwt.InvalidTokenError:
            return jsonify({
                "status": "error",
                "message": "Token inválido"
            }), 401

        return f(*args, **kwargs)
    return wrapper