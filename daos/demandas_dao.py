from configs.database import engine

def get_all():
  conn = engine.connect()
  stmt = ("""
    SELECT * FROM DEMANDA
  """).format()
  return [dict(r) for r in conn.execute(stmt)]