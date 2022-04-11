class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :my_cart

  def total_price
    product.price.to_i * quantity.to_i
  end
end
