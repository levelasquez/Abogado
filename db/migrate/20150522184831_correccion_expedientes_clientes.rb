class CorreccionExpedientesClientes < ActiveRecord::Migration
  def change
  	remove_index :expedientes, clientes_id: :clientes_id, name: "index_expedientes_on_clientes_id"
  	remove_column :expedientes, :clientes_id, :integer
  	add_index :expedientes, :cliente_id, name: "index_expedientes_on_cliente_id"
  end
end
