json.extract! wishlist, :id, :wishlist_id, :product_id, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
