json.array!(@contents) do |content|
  json.extract! content, :id, :body
  json.url content_url(content, format: :json)
end
