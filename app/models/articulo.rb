class Articulo < ActiveRecord::Base
      belongs_to :autor
      drop_table 'articulos_categorias'
end
