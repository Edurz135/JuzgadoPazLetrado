% include('_header.tpl')
<h1>Editar Perfil</h1>
<p>
  En esta pestaña podrá editar su perfil registrado en el Juzgado de Paz Letrado.
</p>
% for perfil in locals['perfil']:
<label></label>
<br/>
<h3>╁ Informacion general del perfil del Juez</h3>
<form action="/perfil/grabar" method="post">
  <label><b>Nombres: </b></label>
  <input type="text" id="juez_nombres" name="juez_nombres" value="{{perfil["juez_nombres"] }}"></br>
  
  <label><b>Apellidos: </b></label>
  <input type="text" id="juez_apellidos" name="juez_apellidos" value="{{perfil["juez_apellidos"] }}"></br>
  
  <label><b>Numero de Colegiatura: </label>
  <input type="text" id="juez_nro_colegiatura" name="juez_nro_colegiatura" value="{{ perfil["juez_nro_colegiatura"] }}"></br>
  
  <label><b>DNI: </b></label>
  <input type="text" id="juez_dni" name="juez_dni" value="{{perfil["juez_dni"] }}"></br>
  
  <label><b>Usuario: </b></label>
  <input type="text" id="juez_usuario" name="juez_usuario" value="{{perfil["juez_usuario"] }}"></br>
  
  <label><b>Contraseña: </b></label>
  <input type="text" id="juez_contrasena" name="juez_contrasena" value="{{perfil["juez_contrasena"] }}"></br>
  
  <label><b>Dirección del Juzgado</label>
  <input type="text" id="juez_direccion" name="juez_direccion" value="{{ perfil["juez_direccion"] }}"></br>
  
  <label><b>Sexo: </b></label>
  <input type="text" id="juez_sexo" name="juez_sexo" value="{{perfil["juez_sexo"] }}"></br>
  </br>
  <button
    href="/perfil"
    style="
      text-decoration: none;
      background-color: #000000;
      color: white;
      padding: 7px 12px;
      border-radius: 10px;
    "
  >
    Guardar
  </button>
</form>
% end
% include('_footer.tpl')
