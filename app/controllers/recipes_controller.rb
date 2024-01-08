class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_item, only: [:edit, :show, :update, :destroy]

  def index
    @recipes = Recipe.all.order('created_at DESC')
    client = HTTPClient.new
    pop = client.get("https://app.rakuten.co.jp/services/api/Recipe/CategoryRanking/20170426?applicationId=#{ENV['RAKUTEN_APPLICATION_ID']}")
    @foods = JSON.parse(pop.body)['result']
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @comments = @recipe.comments.includes(:user)
    @comment = Comment.new
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipe_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if user_signed_in? && current_user.id == @recipe.user_id
      @recipe.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredient, :instruction, :reference_url, :memo,
                                   :image).merge(user_id: current_user.id)
  end

  def set_item
    @recipe = Recipe.find(params[:id])
  end
end
