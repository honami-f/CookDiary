class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @recipes = @user.recipes.order('created_at DESC')
    @like_recipes = @user.likes.map{|like| like.recipe}
  end

end
