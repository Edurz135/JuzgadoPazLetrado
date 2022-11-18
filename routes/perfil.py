#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, request, HTTPResponse, redirect
from daos.perfil_dao import get_by_id, get_all_juzgadopazletrado, get_all_sexo
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
    'juzgadopazletrado': get_all_juzgadopazletrado(),
    'sexo': get_all_sexo(),
  }
  boby_template = template('perfil/detail', locals = locals)
  return HTTPResponse(status = 200, body = boby_template)

@subapp.route('/grabar', method='POST')
def genero_grabar():
  # FALTA MODIFICAR
  # pametros
  juez_id = request.params.juez_id
  juez_nombres = request.params.juez_nombres
  juez_apellidos = request.params.juez_apellidos
  juez_nro_colegiatura = request.params.juez_nro_colegiatura
  juez_dni = request.params.juez_dni
  juez_usuario = request.params.juez_usuario
  juez_contrasena = request.params.juez_contrasena
  juez_juzgadopazletrado_id = request.params.juzgadopazletrado_id
  juez_sexo_id = request.params.sexo_id

  # acceso de db
  conn = engine.connect()
  stmt = (f"""
    UPDATE JUEZ SET 
      NOMBRES='{juez_nombres}',
      APELLIDOS='{juez_apellidos}', 
      NRO_COLEGIATURA={juez_nro_colegiatura},
      DNI={juez_dni},
      USUARIO='{juez_usuario}',
      CONTRASENA='{juez_contrasena}',
      JUZGADO_ID={juez_juzgadopazletrado_id},
      SEXO_ID={juez_sexo_id}
      WHERE ID={juez_id}
  """)
  conn.execute(stmt)
  # devolver datos a una vista
  redirect('/perfil')