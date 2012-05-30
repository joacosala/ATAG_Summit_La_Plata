class CreateAutors < ActiveRecord::Migration
  def change
    create_table :autors do |t|
      t.string :nombreusuario
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
