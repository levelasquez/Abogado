json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido, :cedula, :telefono, :correo, :direccion
  json.url cliente_url(cliente, format: :json)
end
