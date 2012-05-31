class Articulo < ActiveRecord::Base
      belongs_to :autor
      has_and_belongs_to_many :categories	
end
