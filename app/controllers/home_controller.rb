class HomeController < ApplicationController
  before_action :authenticate_user! # metodo definido por devise, si no hay sesion existente, redireciona al usuario a la autenticacion
  def index
  end
end
