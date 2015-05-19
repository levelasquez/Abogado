json.array!(@tribunals) do |tribunal|
  json.extract! tribunal, :id, :area, :instancia, :tipo, :juez, :direccion, :telefono
  json.url tribunal_url(tribunal, format: :json)
end
