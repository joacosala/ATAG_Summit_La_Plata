class HomeController < ApplicationController
  def index
   @articulos = Articulo.order("created_at DESC")
  end

end
