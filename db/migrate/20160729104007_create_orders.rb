class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.timestamp :finalized_at
      t.timestamp :ordered_at
      t.timestamp :delivered_at

      t.timestamps
    end
  end
end
