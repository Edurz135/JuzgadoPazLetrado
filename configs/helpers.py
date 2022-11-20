def menu(url):
  items = [
    {'name': 'Inicio', 'url': '/inicio', 'active': False, 'boxicon-name': 'home'},
    {'name': 'Perfil', 'url': '/perfil', 'active': False, 'boxicon-name': 'user-circle'},
    {'name': 'Expedientes', 'url': '/expedientes', 'active': False, 'boxicon-name': 'folder-open'},
    {'name': 'Demandas', 'url': '/demandas', 'active': False, 'boxicon-name': 'book-bookmark'},
    {'name': 'Juzgados', 'url': '/juzgados', 'active': False, 'boxicon-name': 'compass'},
    # {'name': 'Gestión de Estados', 'url': '/state', 'active': False},
    # {'name': 'Gestión de Empleados', 'url': '/worker?step=10&page=1', 'active': False},
    # {'name': 'Gestión de Tickets', 'url': '/ticket?step=10&page=1', 'active': False},
    # {'name': 'Demo', 'url': '/demo', 'active': False},
  ]
  proceed = True
  for item in items:
    if url == item['url']:
      item['active'] = True
      proceed = False
    else :
      if proceed and url in item['url']:
        item['active'] = True
  return items
