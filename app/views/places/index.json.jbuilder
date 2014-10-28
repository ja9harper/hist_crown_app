json.array!(@places) do |place|
  json.extract! place, :id, :name, :address, :image, :history, :latlng
  json.url place_url(place, format: :json)
end
