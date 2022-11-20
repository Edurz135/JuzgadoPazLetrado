% include('_header.tpl')
<h1>Agregar Juzgado de Paz Letrado</h1>
<p>En esta pestaña podrá agregar Juzgados de Paz Letrado.</p>
<form action="/juzgados/grabar" method="post">
  <input type="hidden" name="id" value="{{locals['juzgado']['id']}}"><br>
  <label for="name">Direccion:</label><br>
  <input type="text" required style="width: 300px; height: 1.5em; font-size: 1em;" id="direccion" name="direccion" value="{{locals['juzgado']['direccion']}}"><br><br>

  <button class="btn" style="background-color: #9B1513; padding: 0.5em 1em; color: white; border-radius: 0.5em; text-decoration: none;" href="/juzgado/crear">Grabar</button>
</form>
% include('_footer.tpl')
