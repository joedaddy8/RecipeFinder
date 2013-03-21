class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    render text: params[:ingredient].inspect
  end

  def destroy
   @ingredient = Ingredient.find(params[:id])
   @ingredient.destroy

   redirect_to action: :index 
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
 

  def index
    @ingredients = Ingredient.all
  end
end
