class HomeController < ApplicationController
  def index
   @articulos = Articulo.order("created_at DESC")
  end

  def show
   @articulo = Articulo.find(params[:id])
   respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @articulo }
   end
  end


end
