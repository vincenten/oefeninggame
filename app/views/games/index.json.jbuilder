json.array!(@games) do |game|
  json.extract! game, :id, :name, :genre_id, :description, :release_year
  json.url game_url(game, format: :json)
end
