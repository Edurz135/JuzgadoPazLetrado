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
  <input type="hidden" name="juez_id" value="{{perfil['juez_id']}}">
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
  <select name="juzgadopazletrado_id">
    % for item in locals['juzgadopazletrado']:
      % if perfil['juzgado_id'] == item['id']: 
        <option selected value="{{item['id']}}">{{item['direccion']}}</option>
      % else:
        <option value="{{item['id']}}">{{item['direccion']}}</option>
      % end
    % end
  </select><br/>
  <label><b>Sexo: </b></label>
  <select name="sexo_id">
    % for item in locals['sexo']:
      % if perfil['sexo_id'] == item['id']: 
        <option selected value="{{item['id']}}">{{item['nombre']}}</option>
      % else:
        <option value="{{item['id']}}">{{item['nombre']}}</option>
      % end
    % end
  </select><br/>
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
