class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    render json: @ingredient
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @patient.save
      render json: @ingredient, status: :created
    else
      render json: @ingredient.errors, status: :unprocessible_entity
    end
end
