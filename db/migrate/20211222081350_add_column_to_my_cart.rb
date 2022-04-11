class AddColumnToMyCart < ActiveRecord::Migration[6.0]
  def change
    add_column :my_carts, :title, :string
    add_column :my_carts, :description, :text
    add_column :my_carts, :quantity, :integer
    add_column :my_carts, :image, :string
    add_column :my_carts, :category, :text
    add_column :my_carts, :unit_price, :decimal
    add_column :my_carts, :total_price, :decimal
  end
end
