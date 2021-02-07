import sqlalchemy
import json

# Set the following variables depending on your specific
# connection name and root password from the earlier steps:
connection_name = "nfc-tours:us-central1:nfc-database"
db_password = "hacklahoma2021"
db_name = "postgres"

db_user = "postgres"
driver_name = 'postgres+pg8000'
query_string = dict({"unix_sock": "/cloudsql/{}/.s.PGSQL.5432".format(connection_name)})



def getData(request):
    request_json = request.get_json()
    stmt = sqlalchemy.text("SELECT Tours.tourName, Tours.stopName, Tours.stopId, StopInfo.pointOfInterest, StopInfo.pointInfo, StopInfo.coords  From Tours INNER JOIN StopInfo ON Tours.stopName = StopInfo.stopName WHERE Tours.tourName =" + repr(request.args.get('tourName')))
    db = sqlalchemy.create_engine(
      sqlalchemy.engine.url.URL(
          drivername=driver_name,
          username=db_user,
          password=db_password,
          database=db_name,
          query=query_string,
      ),
      pool_size=5,
      max_overflow=2,
      pool_timeout=30,
      pool_recycle=1800
    )
    headers = {
        'Access-Control-Allow-Origin': '*'
    }
    try:
        with db.connect() as conn:
            result = conn.execute(stmt)
            return (json.dumps([dict(r) for r in result]), 200, headers)
    except Exception as e:
        return 'Error: {}'.format(str(e))
    return 'OK'