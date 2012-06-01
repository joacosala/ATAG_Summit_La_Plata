class HomeController < ApplicationController
  def index
   @articulos = Articulo.order("created_at DESC")
  end

  def show
   @articulo = Articulo.find(params[:id])
   @comentario = Comentario.new
   respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @articulo }
   end
  end

  private
  def save_hit article_id
    @hit = Hit.new(:articulo_id => articulo_id, :autor_id => 0)
     #author_id equals 0 means a hit from a guest
     @hit.autor_id = session[:autor_id] if session[:autor_id]
     @hit.save
  end

end
