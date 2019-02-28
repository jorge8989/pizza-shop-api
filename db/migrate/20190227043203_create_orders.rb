class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string   :state, default: 'queued'
      t.datetime :delivered_at

      t.timestamps null: false
    end
  end
end
