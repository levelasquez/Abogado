class CreateAbogadoPs < ActiveRecord::Migration
  def change
    create_table :abogado_ps do |t|
      t.string :nombre
      t.string :apellido
      t.integer :ipsa
      t.integer :telefono
      t.text :direccion
      t.integer :cedula

      t.timestamps
    end
  end
end
