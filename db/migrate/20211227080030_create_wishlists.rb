class CreateWishlists < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlists do |t|
      t.integer :wishlist_id
      t.integer :product_id

      t.timestamps
    end
  end
end
