class MealOrder < ApplicationRecord
  belongs_to :order

  scope :today, -> { where('DATE(created_at) = ?', Date.today) }
  scope :by_user, -> (user) { where('user_id', user.id) }
end
