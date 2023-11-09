class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @recipes = @user.recipes.order("created_at DESC")
  end
end
