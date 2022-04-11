class CreateMyCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :my_carts do |t|

      t.timestamps
    end
  end
end
