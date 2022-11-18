#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, request, HTTPResponse
from daos.expedientes_dao import get_by_dni
from configs.helpers import menu

subapp = Bottle()

@subapp.route('/', method='GET')
def home():
  locals = {
    'title': 'Expedientes',
    'menu': menu('/expedientes'),
  }
  boby_template = template('expedientes/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@subapp.route('/detail', method='GET')
def home():
  expediente_dni = request.params.expediente_dni or 29909077

  locals = {
    'title': 'Expedientes',
    'menu': menu('/expedientes'),
    'expedientes': get_by_dni(expediente_dni),
  }
  boby_template = template('expedientes/detail', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)