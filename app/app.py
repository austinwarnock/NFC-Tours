from flask import Flask, jsonify, request
import psycopg2
import os

app = Flask(__name__)

# Get the database URL from the environment variable
database_url = os.environ.get("DATABASE_URL")

@app.route('/')
def hello():
    return jsonify(message='Hello, this is your Flask API connected to PostgreSQL!')

@app.route('/getData')
def getData():
    query = "SELECT Tours.tourName, Tours.stopName, Tours.stopId, StopInfo.pointOfInterest, StopInfo.pointInfo, StopInfo.coords  From Tours INNER JOIN StopInfo ON Tours.stopName = StopInfo.stopName WHERE Tours.tourName =" + repr(request.args.get('tourName'))
    connection = psycopg2.connect(database_url)
    cursor = connection.cursor()
    cursor.execute(query)
    result = cursor.fetchall()
    cursor.close()
    connection.close()
    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
