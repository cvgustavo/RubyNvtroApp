json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :custo, :fabricante_id, :tipoproduto_id
  json.url produto_url(produto, format: :json)
end
