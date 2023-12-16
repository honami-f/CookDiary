class LikesController < ApplicationController
  before_action :set_recipe
  before_action :authenticate_user!, only: [:create]

  def create
    like = current_user.likes.build(recipe_id: params[:recipe_id])
    like.save
    redirect_to recipe_path(:recipe_id)
  end

  def destroy
    like = Like.find_by(recipe_id: params[:recipe_id], user_id: current_user.id)
    like.destroy
    redirect_to recipe_path(:recipe_id)
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end