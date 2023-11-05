class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
    redirect_to '/'
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :ingredient, :instruction, :reference_url, :memo, :image).merge(user_id: current_user.id)
  end
end
