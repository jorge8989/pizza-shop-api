class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :key_name
      t.boolean :customizable, default: false

      t.timestamps null: false
    end
  end
end
