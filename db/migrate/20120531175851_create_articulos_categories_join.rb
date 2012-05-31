class CreateArticulosCategoriesJoin < ActiveRecord::Migration
  def up
     create_table 'articulos_categories', :id => false do |t|
	t.column :articulo_id, :integer
	t.column :category_id, :integer
     end
  end

  def down
     drop_table 'articulos_categories'
  end
end
