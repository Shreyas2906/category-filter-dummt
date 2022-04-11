json.extract! my_cart, :id, :created_at, :updated_at
json.url my_cart_url(my_cart, format: :json)
