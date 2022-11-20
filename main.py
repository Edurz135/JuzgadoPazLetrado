#!/usr/bin/env python
# -*- coding: utf-8 -*-
from bottle import Bottle, run, template, static_file, request, redirect, HTTPResponse
from configs.database import engine
from daos.login_dao import get_juez
from configs.helpers import menu
from routes.inicio import subapp as inicio_routes
from routes.expedientes import subapp as expedientes_routes
from routes.demandas import subapp as demandas_routes
from routes.perfil import subapp as perfil_routes
from routes.juzgados import subapp as juzgados_routes

# Variables globales
current_juez_id = -1  

app = Bottle()

@app.route('/', method='GET')
def home():
  locals = {
    'title': 'Login',
  }
  if current_juez_id != -1:
    new_path = '/inicio?juez_id=' + str(current_juez_id)
    redirect(new_path)
  boby_template = template('login/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@app.route('/logout', method='GET')
def logout():
  global current_juez_id
  current_juez_id = -1
  redirect('/')

@app.route('/autenticate', method='POST')
def autenticate():
  user = request.params.login_username_input
  pswd = request.params.login_pswd_input

  juez = get_juez(user, pswd)
  if not len(juez):
    redirect('/')

  global current_juez_id
  current_juez_id = juez[0]['id']
  new_path = '/inicio?juez_id=' + str(current_juez_id)
  redirect(new_path)

@app.route('/:filename#.*#')
def send_static(filename):
  return static_file(filename, root='./static')

if __name__ == '__main__':
  app.mount('/inicio', inicio_routes)
  app.mount('/expedientes', expedientes_routes)
  app.mount('/demandas', demandas_routes)
  app.mount('/perfil', perfil_routes)
  app.mount('/juzgados', juzgados_routes)
  run(
    app, 
    host='0.0.0.0', 
    port=8081, 
    debug=True, 
    reloader=True
  )