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

end
