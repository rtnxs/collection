json.extract! item, :id, :name, :city, :year, :type_id, :photo_id, :user_id, :comment_id, :price_current, :price_purchase, :created_at, :updated_at
json.url item_url(item, format: :json)
