class RecipeFoodController < ApplicationController
  def new; end

  def create
    @r = RecipeFood.new(recipe_id: params[:recipe_id], food_id: params[:recipe_food][:food_id],
                        quantity: params[:quantity])
    p @r.recipe_id
    p @r.food_id
    p @r.quantity
    redirect_to recipe_path(params[:recipe_id]) if @r.save
  end
end
