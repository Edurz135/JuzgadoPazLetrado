% include('_header.tpl')
<h1>Demandas</h1>
<p>En esta pestaña encontrará todas las demandas que le han sido asignadas.</p>
% for demanda in locals['demandas']:
<div
  style="
    border-radius: 3vh;
    padding: 15px;
    box-shadow: 0px 4px 10px #aaaaaa;
    display: flex;
  "
>
  <div style="width: 50%">
    <p>
      <b>Nro Solicitud: </b>
      {{ demanda["nro_solicitud"] }}
    </p>
    <p><b>Demandante: </b>{{ demanda["demandante_nombres"] }}</p>
    <p><b>Demandado: </b> {{ demanda["demandado_nombres"] }}</p>
  </div>
  <div style="width: 50%">
    <p><b>Tipo: </b> {{ demanda["tipodemanda_nombre"] }}</p>
    <p><b>Estado: </b> {{ demanda["estadodemanda_nombre"] }}</p>
    <a
      href="/demandas/detail?demanda_id={{demanda["demanda_id"]}}"
      style="
        text-decoration: none;
        background-color: #9b1513;
        color: white;
        padding: 7px 12px;
        border-radius: 10px;
      "
    >
      Ver detalle
    </a>
  </div>
</div>
% end
% include('_footer.tpl')
