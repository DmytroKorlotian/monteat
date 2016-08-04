class Order < ApplicationRecord
  has_many :meal_orders

  scope :today, lambda { where('DATE(created_at) = ?', Time.now.utc.to_date) }
end
