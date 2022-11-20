% include('_header.tpl')
<h1>Juzgados de Paz Letrado</h1>
<p>En esta pestaña podrá ver todos los Juzgados de Paz Letrado registrados.</p>
<table>
  <thead">
    <th>Id</th>
    <th>Nombre</th>
  </thead>
  <tbody>
    % for juzgado in locals["juzgados"]:
    <tr>
      <td>{{ juzgado["id"] }}</td>
      <td>{{ juzgado["direccion"] }}</td>
      <td>
        <a class="btn" href="/juzgados/editar?id={{ juzgado['id'] }}"><box-icon name="edit-alt" color='black'></box-icon></a>
        <a class="btn" href="/juzgados/eliminar?id={{ juzgado['id'] }}"><box-icon name="trash" color='#9B1513'></box-icon></a>
      </td>
    </tr>
    % end
  </tbody>
</table>
<br/>
<a class="btn" style="background-color: #9B1513; padding: 0.5em 1em; color: white; border-radius: 0.5em; text-decoration: none;" href="/juzgados/crear">Agregar Nuevo Juzgado</a>
% include('_footer.tpl')
