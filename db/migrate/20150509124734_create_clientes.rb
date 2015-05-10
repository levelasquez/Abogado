class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.integer :cedula
      t.integer :telefono
      t.string :correo
      t.text :direccion

      t.timestamps
    end
  end
end
