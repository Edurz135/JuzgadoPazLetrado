% include('_header.tpl')
% for expediente in locals['expedientes']:

<h1>
  Expediente de DNI: {{ expediente["reniec_dni"] }}
</h1>

<p style="margin-bottom: 2em;">
  En esta pestaña encontrará todo la información refererida al expediente Nro.
  {{ expediente["expediente_nro"] }} y también la información del secretario judicial que aprobó la información presente.
</p>
<div style="display: flex; flex-direction: row; margin-bottom: 2em;">
  <div
    style="
      width: 50%;
      border-radius: 3vh;
      padding: 5px 20px;
      box-shadow: 0px 4px 10px #aaaaaa;
      margin-right: 10px;
    "
  >
    <p><b> Observaciones: </b></p>
    <p>{{ expediente["expediente_observaciones"] }}</p>
  </div>
  <div
    style="
      width: 50%;
      border-radius: 3vh;
      padding: 5px 20px;
      margin-left: 10px;
      box-shadow: 0px 4px 10px #aaaaaa;
    "
  >
    <p><b> Secretario Judicial: </b></p>
    <p>Nombres: {{expediente["secretario_nombres"]}}</p>
    <p>Apellidos: {{expediente["secretario_apellidos"]}}</p>
    <p>Dni: {{expediente["secretario_dni"]}}</p>
    <p>Nro colegiatura: {{expediente["secretario_nro_colegiatura"]}}</p>
    <p>Sexo: {{expediente["s_sexo_nombre_ss"]}}</p>
    
  </div>
</div>

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
  <p>
    <b> Formulario Reniec: </b>
  </p>
  <p>Nombres: {{expediente["reniec_nombres"]}}</p>
  <p>Apellidos: {{expediente["reniec_apellidos"]}}</p>
  <p>DNI: {{expediente["reniec_dni"]}}</p>
  <p>Sexo: {{expediente["r_sexo_nombre"]}}</p>
  <p>Estado Civil: {{expediente["r_estadocivil_nombre"]}}</p>
  <p>Grado de Instruccion: {{expediente["r_grado_institucion_nombre"]}}</p>
</div>
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
  <p>
    <b> Formulario Sunarp: </b>
  </p>
  <p>Nro propiedades: {{expediente["sunarp_nro_propiedades"]}}</p>
  <p>Nro vehiculos: {{expediente["sunarp_nro_vehiculos"]}}</p>
  <p>Observaciones: {{expediente["sunarp_observaciones"]}}</p>
</div>
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
  <p>
    <b> Formulario Min. Trabajo: </b>
  </p>
  <p>Nombre lugar de trabajo: {{expediente["mintrabajo_lugar"]}}</p>
  <p>RUC lugar de trabajo: {{expediente["mintrabajo_ruc"]}}</p>
  <p>Monto de ingreso: {{expediente["mintrabajo_monto"]}}</p>
  <p>Observaciones: {{expediente["mintrabajo_observaciones"]}}</p>

</div>

% end
