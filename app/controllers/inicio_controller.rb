# -*- coding: utf-8 -*-

class InicioController < ApplicationController
  def index
    # Redireccionamos a la Edición actual
    @edicion = Edicion.actuales.first
    redirect_to "/edicion/#{@edicion.nombre}" unless @edicion.nil?
  end
end
