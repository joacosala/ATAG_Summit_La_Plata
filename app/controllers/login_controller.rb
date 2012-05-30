class LoginController < ApplicationController
  def registro
         @autor = Autor.new
  end

  def registrar  
       @autor = Autor.new(params[:autor])
       if @autor.save
	     redirect_to login_path
       else
	     redirect_to signup_path
       end
  end

end
