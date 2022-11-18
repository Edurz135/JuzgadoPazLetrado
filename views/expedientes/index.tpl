% include('_header.tpl')
% for expediente in locals['expedientes']:

<h1 style="font-family: Helvetica ; font-size: 40px" >Expediente de DNI: {{ expediente ["reniec_dni"] }}</h1>

<p style="line-height: 0; font-family: Calibri; font-size: 20px">
  En esta pestaña encontrará todo la información refererida al expediente Nro. {{ expediente["expediente_nro"] }}
</p>
<div
  style="
    border-radius: 3vh;
    padding: 25px;
    box-shadow: 0px 4px 10px #aaaaaa;
    display: flex;
    margin-right: 60px;
  "
>
  <div style="width: 50%">
    <p>
      <b> Observaciones: </b>
    </p>
    <p>
      {{ expediente["expediente_observaciones"] }}
    </p>
  </div>
</div>

<div
  style="
    border-radius: 3vh;
    padding: 25px;
    box-shadow: 0px 4px 10px #aaaaaa;
    display: flex;
    margin-right: 60px;
    top: 1300;
    left: 700;
  "
>
  <div style="width: 50%">
    <p>
      <b> Formulario Reniec: </b>
    </p>
    <p>
      {{ expediente["expediente_observaciones"] }}
    </p>
  </div>
</div>

% end
% include('_footer.tpl')