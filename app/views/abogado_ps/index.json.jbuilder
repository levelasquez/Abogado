json.array!(@abogado_ps) do |abogado_p|
  json.extract! abogado_p, :id, :nombre, :apellido, :ipsa, :telefono, :integer, :direccion, :cedula
  json.url abogado_p_url(abogado_p, format: :json)
end
