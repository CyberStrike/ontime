json.array!(@users) do |user|
  json.extract! user, :id, :email, :cc, :cvs, :expdate
  json.url user_url(user, format: :json)
end
