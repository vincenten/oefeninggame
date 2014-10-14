json.array!(@genres) do |genre|
  json.extract! genre, :id, :genre_id, :name, :description
  json.url genre_url(genre, format: :json)
end
