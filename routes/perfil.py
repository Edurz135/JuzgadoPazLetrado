#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, request, HTTPResponse, redirect
from daos.perfil_dao import get_by_id
from configs.helpers import menu
from configs.database import engine

subapp = Bottle()

@subapp.route('/', method='GET')
def home():
  juez_id = request.params.juez_id or 1

  locals = {
    'title': 'Perfil',
    'menu': menu('/perfil'),
    'perfil': get_by_id(juez_id),
  }
  boby_template = template('perfil/index', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@subapp.route('/editar', method='GET')
def perfil_editar():
  juez_id = request.params.juez_id or 1
  locals = {
    'title': 'Perfil Editar',
    'menu': menu('/perfil'),
    'perfil': get_by_id(juez_id),
  }
  boby_template = template('perfil/detail', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@subapp.route('/grabar', method='POST')
def genero_grabar():
  # FALTA MODIFICAR
  
  # pametros
  juez_id = 1
  juez_nombres = request.params.juez_nombres
  juez_apellidos = request.params.juez_apellidos
  juez_nro_colegiatura = request.params.juez_nro_colegiatura
  juez_dni = request.params.juez_dni
  juez_usuario = request.params.juez_usuario
  juez_contrasena = request.params.juez_contrasena
  juez_direccion = request.params.juez_direccion
  juez_sexo = request.params.juez_sexo

  # acceso de db
  conn = engine.connect()
  stmt = ("""
    UPDATE generos SET 
      nombre='{}' 
      WHERE id={}
  """).format(nombre, genero_id)
  conn.execute(stmt)
  # devolver datos a una vista
  redirect('/')