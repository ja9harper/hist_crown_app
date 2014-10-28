json.array!(@stories) do |story|
  json.extract! story, :id, :title, :body, :place_id, :user_id
  json.url story_url(story, format: :json)
end
