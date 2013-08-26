class RecipesController < ApplicationController
  def index
    @recipes = Recipe.order(:title)

    @ingredient = Ingredient.new
    @ingredients = @recipes.each.map(&:key_ingredient).uniq.sort
    preptime = @recipes.each.map(&:preptime)
    cooktime = @recipes.each.map(&:cooktime)
    @time = preptime.zip(cooktime).map{|p,c| (p.to_i)+(c.to_i) }
    @time = @time.uniq.sort
    respond_to do |format|
      format.html { render :index }
      format.js { render :index }
    end
 end
   def new
    @recipe = Recipe.new
  end
  def filter
    ingredient = params[:ingredient_select]
    @recipes = Recipe.where(:key_ingredient => ingredient)
  end
  def filterbytime
    time_select = params[:time_select]
    @recipes = Recipe.where(@recipes.total_time => time_select)
  end
  def create
    Recipe.create(params[:recipe])
    @recipes = Recipe.order(:title)
    respond_to do |format|
      format.html { redirect_to(recipes_path) }
      format.js { render :create }
    end
  end
  def show
    @recipe = Recipe.find(params[:id])
    @recipes = Recipe.all
    @tutorials = Tutorial.all
    @ingredients = Ingredient.all
    @ingredients.map!(&:name).sort
    # @ingredients = (@ingredient.each.map{|ing| ing.map{|a| a.name}}).flatten.sort
    @items = @recipe.items.each.map(&:recipe_note)
  end
  def edit
    @recipe = Recipe.find(params[:id])
    @item = Item.new
    respond_to do |format|
      format.html { }
      format.js { render :edit => @recipe }
    end
  end
  def update
    recipe = Recipe.find(params[:id])
    recipe.update_attributes(params[:recipe])
    redirect_to(recipe_path)
  end
  def destroy
    recipe = Recipe.find(params[:id])
    recipe.delete
    redirect_to(recipes_path)
  end
   def keyingredient
     render :json => found.where(:key_ingredient => params[:selected])
  end
  def add_item
    @item = Item.create(params[:item])
    @item.recipe_id = params[:recipe_id]
    @item.recipe_note = params[:recipe_note]
    @item.quantity = params[:quantity]
    @item.ingredient_id = params[:select_ingredient]
    @item.save
    Item.all.push(@item)
    respond_to do |format|
      format.html
      format.js
    end
    # @items = Item.where(@item.recipe_id => :recipe_id)
    # render :json => :items
  end
end