class MealOrder < ApplicationRecord
  belongs_to :order

  scope :today, -> { where('DATE(created_at) = ?', Time.now.utc.to_date) }
  scope :not_today, -> { where.not('DATE(created_at) = ?', Time.now.utc.to_date) }
  scope :by_user, -> (user) { where('user_id', user.id) }

  def meal
    Meal.find(meal_id)
  end

  def order
    Order.find(order_id)
  end
end
