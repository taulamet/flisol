json.array!(@edicions) do |edicion|
  json.extract! edicion, :id, :nombre, :actual
  json.url edicion_url(edicion, format: :json)
end
