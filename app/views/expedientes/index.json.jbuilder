json.array!(@expedientes) do |expediente|
  json.extract! expediente, :id, :clientes_id, :cliente_id, :expediente, :area, :descripcion, :victima, :imputado, :status
  json.url expediente_url(expediente, format: :json)
end
