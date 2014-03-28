json.array!(@users) do |user|
  json.extract! user, :id, :username, :similar_user
  json.url user_url(user, format: :json)
end
