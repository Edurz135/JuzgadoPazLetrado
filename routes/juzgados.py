#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, HTTPResponse, request, redirect  
from configs.helpers import menu
from daos.juzgados_dao import get_all, get_by_id
from configs.database import engine

subapp = Bottle()

@subapp.route('/', method='GET')
def home():
  locals = {
    'title': 'Juzgados',
    'menu': menu('/juzgados'),
    'juzgados': get_all(),
  }
  boby_template = template('juzgados/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@subapp.route('/crear', method='GET')
def home():
  juzgado = {}
  juzgado['id'] = 'E'
  juzgado['direccion'] = ''

  locals = {
    'title': 'Juzgados',
    'menu': menu('/juzgados'),
    'juzgado': juzgado,
  }
  boby_template = template('juzgados/detail', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@subapp.route('/editar', method='GET')
def ciudadano_editar():
  juzgado_id = int(request.params.id)
  print(get_by_id(juzgado_id))
  locals = {
    'title': 'Editar Juzgado',
    'menu': menu('juzgados'),
    'juzgado': get_by_id(juzgado_id)[0],
  }
  return template('juzgados/detail', locals=locals)

@subapp.route('/grabar', method='POST')
def juzgado_grabar():
  juzgado_id = request.params.id
  direccion = request.params.direccion
  conn = engine.connect()
  if juzgado_id == 'E':
    stmt = (f"""INSERT INTO JUZGADOPAZLETRADO (DIRECCION) VALUES ('{direccion}')""")
    conn.execute(stmt)
  else:
    stmt = (f"""UPDATE JUZGADOPAZLETRADO SET DIRECCION='{direccion}' WHERE id={juzgado_id} """)
    conn.execute(stmt)

  redirect('/juzgados?mensaje=editado')

@subapp.route('/eliminar', method='GET')
def ciudadano_eliminar():
  juzgado_id = int(request.params.id)
  conn = engine.connect()
  stmt = (f"""DELETE FROM JUZGADOPAZLETRADO WHERE id={juzgado_id}""")
  conn.execute(stmt)
  # devolver datos a una vista
  redirect('/juzgados?mensaje=eliminado')


