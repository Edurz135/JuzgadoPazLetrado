#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, HTTPResponse
from daos.perfil_dao import get_all
from configs.helpers import menu

subapp = Bottle()

@subapp.route('/', method='GET')
def home():
  locals = {
    'title': 'Perfil',
    'menu': menu('/perfil'),
    'perfil': get_all(1),
  }
  boby_template = template('perfil/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)
