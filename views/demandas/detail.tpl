% include('_header.tpl')
% for demanda in locals['demandas_d']:
<h1>Demanda Nro. {{demanda["demanda_nro_solicitud"]}} </h1>
<p>En esta pestaña encontrará toda la información referida a la demanda Nro. {{demanda["demanda_nro_solicitud"]}}</p>


<div
  style="
    border-radius: 3vh;
    padding: 15px;
    box-shadow: 0px 4px 10px #aaaaaa;
    display: flex;
    flex-direction: column;
    margin-bottom: 2em;
    line-height: 0;
  "
>
  <p> <b> Información general: </b> </p>
  <p>Descripción:</p>
  <p>{{demanda["demanda_descripcion"]}}</p>
  <p>Fecha de emisión</p>
  <p>{{demanda["demanda_fecha_emision"]}}</p>

</div>
<div
  style="
    border-radius: 3vh;
    padding: 15px;
    box-shadow: 0px 4px 10px #aaaaaa;
    margin-bottom: 2em;
    line-height: 0.5em;
  "
>
  <p> <b> Información personal del demandante: </b> </p>
  <p>INFORMACIÓN DEL ABOGADO ENCARGADO:</p>
  <p>Nombres: {{demanda["abogado_demandante_nombres"]}}</p>
  <p>Apellidos: {{demanda["abogado_demandante_apellidos"]}}</p>
  <p>DNI: {{demanda["abogado_demandante_dni"]}}</p>
  <p>Sexo: {{demanda["dea_sexo_nombre"]}}</p>
  <p>Nro de colegiatura: {{demanda["abogado_demandante_nro_c"]}}</p>
  <br/>
  <p>INFORMACIÓN DEL DEMANDANTE:</p>
  <p>Nombres: {{demanda["demandante_nombres"]}}</p>
  <p>Apellidos: {{demanda["demandante_apellidos"]}}</p>
  <p>DNI: {{demanda["demandante_dni"]}}</p>
  <p>Dirección: {{demanda["demandante_direccion"]}}</p>
  <p>Sexo: {{demanda["de_sexo_nombre"]}}</p>
  <br/>
  <br/>
  <a
  href="#"
  style="
        text-decoration: none;
        background-color: #BC4745;
        color: white;
        padding: 10px 24px;
        border-radius: 10px;
        "
    >
      Ver expediente
    </a>
    <br/>
    <br/>
    <br/>
</div>
<div
  style="
    border-radius: 3vh;
    padding: 15px;
    box-shadow: 0px 4px 10px #aaaaaa;
    margin-bottom: 2em;
    line-height: 0.5em;
  "
>
  <p> <b> Información personal del demandado: </b> </p>
  <p>INFORMACIÓN DEL ABOGADO ENCARGADO:</p>
  <p>Nombres: {{demanda["abogado_demandado_nombres"]}}</p>
  <p>Apellidos: {{demanda["abogado_demandado_apellidos"]}}</p>
  <p>DNI: {{demanda["abogado_demandado_dni"]}}</p>
  <p>Sexo: {{demanda["doa_sexo_nombre"]}}</p>
  <p>Nro de colegiatura: {{demanda["abogado_demandado_nro_c"]}}</p>
  <br/>
  <p>INFORMACIÓN DEL DEMANDADO:</p>
  <p>Nombres: {{demanda["demandado_nombres"]}}</p>
  <p>Apellidos: {{demanda["demandado_apellidos"]}}</p>
  <p>DNI: {{demanda["demandado_dni"]}}</p>
  <p>Dirección: {{demanda["demandado_direccion"]}}</p>
  <p>Sexo: {{demanda["do_sexo_nombre"]}}</p>
  <br/>
  <br/>
  <a
  href="#"
  style="
        text-decoration: none;
        background-color: #BC4745;
        color: white;
        padding: 10px 24px;
        border-radius: 10px;
        "
    >
      Ver expediente
    </a>
    <br/>
    <br/>
    <br/>
</div>
% end
% include('_footer.tpl')
