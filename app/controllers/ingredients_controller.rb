class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:update]

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

  def update
    if @ingredient.update(ingredient_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  def ingredient_params
    params.require(:ingredient).permit(:toxicity)
  end
end
