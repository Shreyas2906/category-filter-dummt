class Product < ApplicationRecord
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :my_carts
	
end
