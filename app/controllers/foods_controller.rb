# frozen_string_literal: true

class FoodsController < ApplicationController
  before_action :set_food, only: %i[edit update show destroy]
  def index
    @food = Food.all
  end

  def show; end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      flash[:success] = "Food Saved!"
      redirect_to foods_path
    else
      render "new"
    end
  end

  def edit; end

  def update
    if @food.update(food_params)
      flash[:success] = "Update Successful!"
      redirect_to foods_path(@food)
    else
      render "edit"
    end
  end

  def destroy
    @food.destroy
    redirect_to foods_path
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :price, :category)
  end
end
