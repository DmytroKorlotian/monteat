class MealsController < ApplicationController
  def index
    @meals = Meal.all
    respond_to do |format|
      format.json { render json: @meals }
    end
  end

  def show
    @meals = Meal.where(restaurant_id: params[:id])
    respond_to do |format|
      format.json { render json: @meals }
    end
  end
end
