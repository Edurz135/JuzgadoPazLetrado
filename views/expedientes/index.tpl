% include('_header.tpl')
  <h1>Expedientes</h1>
<p>
  En esta pestaña se podrá buscar el expediente requerido a traves del DNI.
</p>
<div style="display: flex; justify-content: center; align-items: center">
  <div
    style="
      margin-top: 5em;
      display: flex;
      flex-direction: column;
      background: #9b1513;
      padding: 20px 50px;
      border-radius: 24px;
      box-shadow: 0px 4px 10px #aaaaaa;
    "
  >
    <label style="font-size: 16px; color: white;">DNI</label><br/>
    <input
      id="dni_input"
      type="text"
      style="
        border-radius: 5px;
        min-width: 300px;
        height: 35px;
        font-size: 16px;
      " required
      value=""
    />
    <br />
    <br />
    <div style="display: flex; justify-content: center">
      <button id="dni_button" style="background: black; padding: 5px 40px; border-radius: 0.5em; text-decoration: none; color: white">Buscar</button>
    </div>
  </div>
</div>
% include('_footer.tpl')