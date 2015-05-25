class CorrecionTablaExpedientes < ActiveRecord::Migration
  def change
  	remove_column :expedientes, :descripcion, :string
  	add_column :expedientes, :descripcion, :text
  	remove_column :expedientes, :status, :string
  	add_column :expedientes, :status, :integer
  end
end
