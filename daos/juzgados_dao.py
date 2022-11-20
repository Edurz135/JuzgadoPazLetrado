from configs.database import engine

def get_all():
  conn = engine.connect()
  stmt = """
  SELECT * FROM JUZGADOPAZLETRADO ORDER BY ID ASC
  """
  return [dict(r) for r in conn.execute(stmt)]

def get_by_id(id):
  conn = engine.connect()
  stmt = f"""
  SELECT * FROM JUZGADOPAZLETRADO WHERE ID = {id}
  """
  return [dict(r) for r in conn.execute(stmt)]
