#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, request, HTTPResponse
from daos.demandas_dao import get_all_by_id
from configs.helpers import menu

subapp = Bottle()

@subapp.route('/', method='GET')
def home():
  juez_id = request.params.juez_id or 1

  locals = {
    'title': 'Demandas',
    'menu': menu('/demandas'),
    'demandas': get_all_by_id(juez_id),
  }
  boby_template = template('demandas/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@subapp.route('/detail', method='GET')
def home():
  juez_id = request.params.juez_id or 1

  locals = {
    'title': 'Demandas',
    'menu': menu('/demandas'),
  }
  boby_template = template('demandas/detail', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)