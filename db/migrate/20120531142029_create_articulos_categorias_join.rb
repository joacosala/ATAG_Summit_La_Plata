class CreateArticulosCategoriasJoin < ActiveRecord::Migration
  def up 
       create_table 'articulos_categorias', :id => false do |t|
	 t.column :articulo_id, :integer
	 t.column :categoria_id, :integer
       end

  end

  def down
        drop_table 'articulos_categorias'
  end
end
