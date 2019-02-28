class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :name
      t.string :key_name

      t.timestamps null: false
    end
  end
end
