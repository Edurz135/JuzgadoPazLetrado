<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/png" href="/favicon.png" />
  <title>{{locals['title']}}</title>
  <link rel="stylesheet" href="styles.css">
  <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
</head>
<body>
<ul class="left-menu">
  <div style="display: flex; align-items: center; justify-content: center; padding-top: 15px; margin-bottom: 30px;">
    <img src="/logo.png" width="95%"/>
  </div>
  % for item in locals['menu']:
  % if item['active'] == True: 
  <li style="padding-left: 15px; background-color: #BC4745;">
    <a class="active" href="{{item['url']}}">
        <box-icon name="{{item['boxicon-name']}}" color='#ffffff' style="margin-right: 25px"></box-icon>
        {{item['name']}}
    </a>
  </li>
    % else:
  <li style="padding-left: 15px"><a href="{{item['url']}}">
      <box-icon name="{{item['boxicon-name']}}" color='#ffffff' style="margin-right: 25px"></box-icon>
      {{item['name']}}</a>
  </li>
  % end
  % end
  <li style="padding-left: 15px; margin-bottom: auto;"><a href="#">
      <box-icon name="log-out" color='#ffffff' style="margin-right: 25px"></box-icon>
      Cerrar sesión</a>
  </li>
</ul>
<div id="app-container">