json.extract! photo, :id, :photo_url, :created_at, :updated_at
json.url photo_url(photo, format: :json)
