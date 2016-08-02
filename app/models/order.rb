class Order < ApplicationRecord
  has_many :meal_orders

  scope :today, lambda { where('DATE(created_at) = ?', Date.today) }
end
