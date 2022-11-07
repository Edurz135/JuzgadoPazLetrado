#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, HTTPResponse
from configs.helpers import menu

subapp = Bottle()

@subapp.route('/', method='GET')
def home():
  locals = {
    'title': 'Perfil',
    'menu': menu('/perfil'),
  }
  boby_template = template('perfil/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)