json.array!(@uploads) do |upload|
  json.extract! upload, :id, :filename
  json.url upload_url(upload, format: :json)
end
