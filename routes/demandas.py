#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, HTTPResponse
from configs.helpers import menu

subapp = Bottle()

@subapp.route('/', method='GET')
def home():
  locals = {
    'title': 'Demandas',
    'menu': menu('/demandas'),
  }
  boby_template = template('demandas/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)