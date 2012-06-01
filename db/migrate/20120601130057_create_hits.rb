class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.integer :articulo_id
      t.integer :autor_id

      t.timestamps
    end
  end
end
