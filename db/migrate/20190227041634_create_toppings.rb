class CreateToppings < ActiveRecord::Migration
  def change
    create_table :toppings do |t|
      t.string :name
      t.string :key_name

      t.timestamps null: false
    end
  end
end
