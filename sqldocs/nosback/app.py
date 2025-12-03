from flask import Flask
#from flask_cors import CORS
from routes.user_routes import user_routes

app = Flask(__name__)
#CORS(app)

app.register_blueprint(user_routes)

PORT = 8002
if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True, port=PORT)
