class MealOrdersController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def index
  end

  def create
    @meal_order = MealOrder.new(meal_order_params)
    @meal_order.user_id = current_user.id
    @meal_order.order_id = todays_order.id

    respond_to do |format|
      if !MealOrder.today.by_user(current_user).present? && @meal_order.save
        format.json { head :ok }
      else
        format.json { render text: '{"error": "Cheater!!! You have already ordered your meal!"}' }
      end
    end
  end

  private

  def meal_order_params
    params.require(:meal_order).permit(:meal_id)
  end

  def todays_order
    order.create! unless Order.today.present?
    Order.today.first
  end
end
