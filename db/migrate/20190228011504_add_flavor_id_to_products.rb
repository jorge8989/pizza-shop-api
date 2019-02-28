class AddFlavorIdToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :flavor, index: true, foreign_key: true
  end
end
