% include('_header.tpl')
<h1>Mi Perfil</h1>
<p>
  En esta pestaña encontrará su perfil registrado en el Juzgado de Paz Letrado
</p>
% for perfil in locals['perfil']:
<label></label>
<br/>
<h3>╁ Informacion general del perfil del Juez</h3>

<p><b>Nombres: </b>{{ perfil["juez_nombres"] }}</p>
<p><b>Apellidos: </b>{{ perfil["juez_apellidos"] }}</p>
<p><b>Numero de Colegiatura: </b>{{ perfil["juez_nro_colegiatura"] }}</p>
<p><b>DNI: </b>{{ perfil["juez_dni"] }}</p>
<p><b>Usuario: </b>{{ perfil["juez_usuario"] }}</p>
<p><b>Contraseña: </b>{{ perfil["juez_contrasena"] }}</p>
<p><b>Dirección del Juzgado: </b>{{ perfil["juez_direccion"] }}</p>
<p><b>Sexo: </b>{{ perfil["juez_sexo"] }}</p>

<a
  href="/perfil/editar"
  style="
    text-decoration: none;
    background-color: #000000;
    color: white;
    padding: 7px 12px;
    border-radius: 10px;
  "
>
  Editar
</a>
% end
% include('_footer.tpl')
