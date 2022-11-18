<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>
      {{ locals["title"] }}
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
  </head>
  <body style="background-color: #9b1513; font-family: Helvetica">
    <div style="display: flex; flex-direction: column; justify-content: center; align-items: center">
      <img src="/logo.png/" width="300px" style="margin-top: 3em;"/>
      <div
        style="
          margin-top: 5em;
          display: flex;
          flex-direction: column;
          background: white;
          padding: 10px 40px;
          border-radius: 24px;
          box-shadow: 0px 4px 20px rgb(66, 0, 0);
        "
      >
        <h2>Login</h2>
        <form action="/inicio" method="GET">
          <label style="font-size: 14px">Usuario</label><br />
          <input
            id="login_username_input"
            type="text"
            style="
              border-radius: 5px;
              min-width: 300px;
              height: 35px;
              font-size: 16px;
            "
            required
          />
          <br />
          <br />
          <label style="font-size: 14px">Contraseña</label><br />
          <input
            id="login_pswd_input"
            type="text"
            style="
              border-radius: 5px;
              min-width: 300px;
              height: 35px;
              font-size: 16px;
            "
            required
          />
          <br />
          <br />
          <div style="display: flex; justify-content: center">
            <button
              id="login_button"
              style="
                background: #bc4745;
                padding: 7px 40px;
                border-radius: 0.5em;
                text-decoration: none;
                color: white;
                border: none;
              "
            >
              Login
            </button>
          </div>
          <br />
        </form>
      </div>
    </div>
  </body>
</html>
