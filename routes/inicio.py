#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, HTTPResponse, request
from daos.login_dao import get_password
from configs.helpers import menu

subapp = Bottle()

@subapp.route('/', method='GET')
def home():
  locals = {
    'title': 'Inicio',
    'menu': menu('/inicio'),
  }
  boby_template = template('inicio/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@subapp.route('/olvidar', method='GET')
def home():
  user = request.params.juez_usuario
  locals = {
    'contrasena' : get_password(user)
  }
  boby_template = template('inicio/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)