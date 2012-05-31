class ArticulosController < ApplicationController
  # GET /articulos
  # GET /articulos.json
  def index
    @articulos = Articulo.where(:autor_id => session[:autor_id]).order("created_at DESC")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articulos }
    end
  end

  # GET /articulos/1
  # GET /articulos/1.json
  def show
    @articulo = Articulo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @articulo }
    end
  end

  # GET /articulos/new
  # GET /articulos/new.json
  def new
    @articulo = Articulo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @articulo }
    end
  end

  # GET /articulos/1/edit
  def edit
    @articulo = Articulo.find(params[:id])
  end

  # POST /articulos
  # POST /articulos.json
  def create
    @articulo = Articulo.new(params[:articulo])

    if session[:autor_id].nil?
	redirect_to login_path
    else
      @articulo.autor_id = session[:autor_id]  
      respond_to do |format|
        if @articulo.save
         format.html { redirect_to @articulo, notice: 'Articulo creado exitosamente.' }
         format.json { render json: @articulo, status: :created, location: @articulo }
        else
         format.html { render action: "new" }
         format.json { render json: @articulo.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /articulos/1
  # PUT /articulos/1.json
  def update
    @articulo = Articulo.find(params[:id])

    respond_to do |format|
      if @articulo.update_attributes(params[:articulo])
        format.html { redirect_to @articulo, notice: 'Articulo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos/1
  # DELETE /articulos/1.json
  def destroy
    @articulo = Articulo.find(params[:id])
    @articulo.destroy

    respond_to do |format|
      format.html { redirect_to articulos_url }
      format.json { head :ok }
    end
  end

  def add_comment
	@comentario = Comentario.new(params[:comentario])
	@comentario.articulo_id = params[:articulo_id]
        if @comentario.save
	  redirect_to :controller => "home",
          :action => "show", :id => @comentario.articulo_id
	end
  end
 
end
