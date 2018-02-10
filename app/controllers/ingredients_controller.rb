class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    if @ingredient.valid?
      @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      render :new
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(params[:id])
      @ingredient.update(params[:id])
      @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      render :edit
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  private

  def ingredient_params
  end
end
