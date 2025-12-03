from flask import Flask 
from flask_cors import CORS
from dotenv import load_dotenv
import os

from routes.main_routes import main_routes
from routes.patients_routes import patient_routes
from routes.buscador_routes import buscador_routes

POST_ENV=os.getenv("PORT")

app=Flask(__name__)
CORS(app)

app.register_blueprint(main_routes)
app.register_blueprint(patient_routes)
app.register_blueprint(buscador_routes)

PORT=8699
if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True, port=PORT)