json.extract! shopping_list, :id, :food, :quantity, :price, :user_id, :created_at, :updated_at
json.url shopping_list_url(shopping_list, format: :json)
