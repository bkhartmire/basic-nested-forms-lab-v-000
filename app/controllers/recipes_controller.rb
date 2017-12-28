class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: '')
    @recipe.ingredients.build(name: '')
  end

  def create
  end

  def recipe_params
    params.require(:recipe).permit(
    :title,
    ingredients_attributes: [
      :ingredient_name,
      :ingredient_quantity
    ]
    )
end
