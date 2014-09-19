json.array!(@convenios) do |convenio|
  json.extract! convenio, :id
  json.url convenio_url(convenio, format: :json)
end
