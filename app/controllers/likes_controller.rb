class LikesController < ApplicationController
  before_action :set_recipe

  def create
    like = current_user.likes.build(recipe_id: params[:recipe_id])
    like.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    like = Like.find_by(recipe_id: params[:recipe_id], user_id: current_user.id)
    like.destroy
    respond_to do |format|
      format.js
    end
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end