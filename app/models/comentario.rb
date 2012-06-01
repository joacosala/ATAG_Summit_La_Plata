class Comentario < ActiveRecord::Base
   belongs_to :articulo
    validates_presence_of :comentarista, :cuerpo
end
