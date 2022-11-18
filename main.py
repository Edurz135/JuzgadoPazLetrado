#!/usr/bin/env python
# -*- coding: utf-8 -*-
from bottle import Bottle, run, template, static_file, request, redirect, HTTPResponse
from configs.database import engine
from configs.helpers import menu
from routes.inicio import subapp as inicio_routes
from routes.expedientes import subapp as expedientes_routes
from routes.demandas import subapp as demandas_routes
from routes.perfil import subapp as perfil_routes

app = Bottle()

@app.route('/', method='GET')
def home():
  locals = {
    'title': 'Login',
  }
  boby_template = template('login/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@app.route('/:filename#.*#')
def send_static(filename):
  return static_file(filename, root='./static')

if __name__ == '__main__':
  app.mount('/inicio', inicio_routes)
  app.mount('/expedientes', expedientes_routes)
  app.mount('/demandas', demandas_routes)
  app.mount('/perfil', perfil_routes)
  run(
    app, 
    host='0.0.0.0', 
    port=8081, 
    debug=True, 
    reloader=True
  )