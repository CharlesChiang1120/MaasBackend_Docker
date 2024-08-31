from flask_sqlalchemy import SQLAlchemy
from flask import Flask, jsonify
from sqlalchemy import text
import os
import logging


# Create an instance of SQLAlchemy
db = SQLAlchemy() 

def create_app():
    app = Flask(__name__)
    app.config['SQLALCHEMY_DATABASE_URI'] = (f"mysql+pymysql://{os.getenv('DB_USER')}:{os.getenv('DB_PASSWORD')}@{os.getenv('DB_HOST')}:{os.getenv('DB_PORT')}/{os.getenv('DB_NAME')}")
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

    db.init_app(app)

    logging.basicConfig()
    logging.getLogger('sqlalchemy.engine').setLevel(logging.INFO)

    @app.route('/test', methods=['GET'])
    def test_connection():
        try:
            with db.engine.connect() as connection:
                result = connection.execute(text('SELECT 1'))
                return jsonify({"message": "Database connection successful!", "result": [row[0] for row in result]})
        except Exception as e:
            return jsonify({"message": "Database connection failed", "error": str(e)}), 500
        
    @app.route('/fetch_one', methods=['GET'])
    def fetch_one():
        try:
            with db.engine.connect() as connection:
                result = connection.execute(text('SELECT * FROM yeabytour.useraccount LIMIT 1'))
                row = result.fetchone()
                if row:
                    columns = result.keys()
                    row_dict = dict(zip(columns, row))
                    return jsonify(row_dict)
                return jsonify({"message": "No records found"}), 404
        except Exception as e:
            return jsonify({"message": "Failed to fetch data", "error": str(e)}), 500

    return app