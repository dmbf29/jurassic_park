class MealsController < ApplicationController
  before_action :set_dinosaur, only: [:new, :create]
  def new
    @meal = Meal.new # meals_path
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.dinosaur = @dinosaur
    if @meal.save
      redirect_to park_path(@dinosaur.park)
    else
      render :new
    end
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to park_path(@meal.dinosaur.park)
  end

  private

  def meal_params
    params.require(:meal).permit(:food_id)
  end

  def set_dinosaur
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
  end
end
