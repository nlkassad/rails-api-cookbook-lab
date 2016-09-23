class IngredientsController < ApplicationController
  before_action :set_ingredient, only: []

  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  def show
    render json: Ingredient.find(params[:id])
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
