class UsersController < ApplicationController
  def show
    @name = current_user.name
    @recipes = current_user.recipes.order("created_at DESC")
  end
end
