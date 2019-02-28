class CreateProductsToppingsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :products, :toppings do |t|
      t.index :product_id
      t.index :topping_id
    end
  end
end
