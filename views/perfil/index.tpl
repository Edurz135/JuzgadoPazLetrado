% include('_header.tpl')
<h1 style="font-family: Helvetica">Mi Perfil</h1>
<p style="font-family: Calibri">
  En esta pestaña encontrará su perfil registrado en el Juzgado de Paz Letrado.
</p>
% for perfil in locals['perfil']:
<label></label>
<h3><p style="font-family: Calibri">╁ Informacion general del perfil del Juez</h3>

<p style="font-family: Calibri">
  <b>Nombres: </b>{{ perfil["juez_nombres"] }}<br>
  <b>Apellidos: </b>{{ perfil["juez_apellidos"] }}<br>
  <b>Numero de Colegiatura: </b>{{ perfil["juez_nro_colegiatura"] }}<br>
  <b>DNI: </b>{{ perfil["juez_dni"] }}<br>
  <b>Usuario: </b>{{ perfil["juez_usuario"] }}<br>
  <b>Contraseña: </b>{{ perfil["juez_contrasena"] }}<br>
  <b>Dirección del Juzgado: </b>{{ perfil["juez_direccion"] }}<br>
  <b>Sexo: </b>{{ perfil["juez_sexo"] }}
</p>

<br>

<a
  href="/perfil/editar?juez_id={{perfil['juez_id']}}"
  style="
    text-decoration: none;
    background-color: #000000;
    color: white;
    padding: 7px 50px;
    border-radius: 12px;
    font-family: Calibri
  "
>
  Editar
</a>
% end
% include('_footer.tpl')


<!- <br/> ->