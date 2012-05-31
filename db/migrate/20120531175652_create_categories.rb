class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nombre
      t.text :detalle

      t.timestamps
    end
  end
end
