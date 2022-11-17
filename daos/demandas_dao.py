from configs.database import engine

def get_all_by_id(juez_id):
  conn = engine.connect()
  stmt = (f"""
    SELECT DEMANDA.NRO_SOLICITUD, DEMANDADO.NOMBRES AS DEMANDADO_NOMBRES, DEMANDANTE.NOMBRES AS DEMANDANTE_NOMBRES, ESTADODEMANDA.NOMBRE AS ESTADODEMANDA_NOMBRE, TIPODEMANDA.NOMBRE AS TIPODEMANDA_NOMBRE FROM DEMANDA
    INNER JOIN DEMANDANTE ON demanda.demandante_id = DEMANDANTE.id
    INNER JOIN DEMANDADO ON demanda.demandado_id = DEMANDADO.id
    INNER JOIN ESTADODEMANDA ON estadodemanda_id = estadodemanda.id
    INNER JOIN TIPODEMANDA ON demanda.tipodemanda_id = tipodemanda.id
    WHERE JUEZ_ID = {juez_id}""")
  return [dict(r) for r in conn.execute(stmt)]