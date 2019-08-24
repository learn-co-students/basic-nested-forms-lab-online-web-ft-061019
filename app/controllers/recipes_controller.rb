class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.build(:name, :quantity)
    child_resource: :name, :quantity
  end

  def create
  end
end
end
