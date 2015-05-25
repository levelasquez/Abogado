class CreateExpedientes < ActiveRecord::Migration
  def change
    create_table :expedientes do |t|
      t.references :clientes, index: true
      t.integer :cliente_id
      t.string :expediente
      t.string :area
      t.string :descripcion
      t.string :victima
      t.string :imputado
      t.string :status

      t.timestamps
    end
  end
end
