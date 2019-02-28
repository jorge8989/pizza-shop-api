class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :food, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
      t.string :cheese
      t.string :sauce
      t.string :crust
      t.string :size
      t.integer :slices

      t.timestamps null: false
    end
  end
end
