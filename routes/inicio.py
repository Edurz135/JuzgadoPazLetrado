#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, HTTPResponse, request
from daos.perfil_dao import get_by_id
from configs.helpers import menu

subapp = Bottle()

@subapp.route('/', method='GET')
def home():
  juez_id = request.params.juez_id or 1
  locals = {
    'title': 'Inicio',
    'menu': menu('/inicio'),
    'perfil': get_by_id(juez_id),
  }
  print(locals['perfil'])
  boby_template = template('inicio/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)