class Autor < ActiveRecord::Base
     has_many :articulos 
     validates_presence_of :nombreusuario, :nombre
     validates_uniqueness_of :nombreusuario

end
