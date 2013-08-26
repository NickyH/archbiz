class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def new
    @item = Item.new
  end
  def create
    # @item = Item.create(params[:item])
    # @item.recipe_id = params[:recipe_id]
    # @item.recipe_note = params[:recipe_note]
    # @item.quantity = params[:quantity]
    # @item.ingredient_id = params[:select_ingredient]
    # @item.save
    # Item.all.push(@item)
    # @items = Item.where(@item.recipe_id => :recipe_id)
    # render :json => :controller=>'recipes', :action => 'show', :id => Item
    # @recipe = Recipe.find(params[:recipe_id])
    # @item = @recipe.items.build(params[:item])

  # respond_to do |format|
  # if @item.save
  #   flash[:notice] = 'Comment was successfully created.'
  #   redirect_to(@item)
  # else
  #   render :action => "recipes/index"
  # end
end

  def show
  end

end
