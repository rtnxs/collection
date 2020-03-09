json.extract! user, :id, :name, :avatar, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
