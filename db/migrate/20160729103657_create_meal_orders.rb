class CreateMealOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_orders do |t|
      t.integer :meal_id
      t.integer :user_id
      t.integer :order_id

      t.timestamps
    end
  end
end
