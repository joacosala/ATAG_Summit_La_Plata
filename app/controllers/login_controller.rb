class LoginController < ApplicationController
  def registro
         @autor = Autor.new
  end

  def registrar  
       @autor = Autor.new(params[:autor])
       if @autor.save
	     redirect_to login_path
       else
	     redirect_to registro_path, 
             :notice => "No se pudo registrar!!.  
                         El nombre de usuario y primer nombre son requeridos, o el  
                         nombre de usuario ya existe"
       end
  end

  def ingresar
      @autor = Autor.find_by_nombreusuario params[:nombreusuario]
      if @autor.nil?
	  redirect_to login_path, :notice => "El nombre de usuario no es valido!" 
      else
	  session[:autor_id] = @autor.id
 	  redirect_to articulos_path
      end
  end












end
