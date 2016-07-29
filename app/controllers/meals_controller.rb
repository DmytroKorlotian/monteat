class MealsController < ApplicationController
  def index
    @meals = Meal.all
    respond_to do |format|
      format.json { render json: @meals }
    end
  end
end
