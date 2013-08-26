class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.order(:name)
    @ingredient = Ingredient.new
  end
  def new
    @ingredient = Ingredient.new
  end
  def create
    @ingredient = Ingredient.create(params[:ingredient])
    @ingredients = Ingredient.order(:name)
    respond_to do |format|
      format.html
      format.js { render :create }
    end
  end
  def show
    @ingredient = Ingredient.find(params[:id])
  end
  def edit
    @ingredient = Ingredient.find(params[:id])
  end
  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update_attributes(params[:recipe])
    redirect_to(ingredient_path)
  end
  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.delete
    redirect_to(ingredients_path)
  end
end

