require 'rails_helper'

RSpec.describe MealOrder, type: :model do
  let(:meal_order) { create(:meal_order) }

  describe 'meal order with restaurant, meal, user and order' do
    let!(:restaurant) { create(:restaurant) }
    let!(:meal) { create(:meal) }
    let!(:user) { create(:user) }
    let!(:order) { create(:order) }

    it 'has a valid factory' do
      expect(meal_order).to be_valid
    end

    it 'assigns proper objects in associations' do
      expect(meal_order.meal_id).to eq(meal.id)
      expect(meal_order.user_id).to eq(user.id)
      expect(meal_order.order_id).to eq(order.id)
    end
  end

  describe 'meal order without associations' do
    it 'does not have valid factory' do
      expect { meal_order }.to raise_exception(ActiveRecord::RecordNotFound)
    end
  end
end
