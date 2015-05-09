class CreateTribunals < ActiveRecord::Migration
  def change
    create_table :tribunals do |t|
      t.string :area
      t.string :instancia
      t.string :tipo
      t.string :juez
      t.text :direccion
      t.integer :telefono

      t.timestamps
    end
  end
end
