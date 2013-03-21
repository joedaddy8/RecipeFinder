class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    render text: params[:recipe].inspect
  end

  def destroy 
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to action: :index
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end
end
