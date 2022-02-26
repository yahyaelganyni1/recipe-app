class RecipeFoodController < ApplicationController
  before_action :set_recipe_food, only: :destroy

  def new; end

  def create
    @r = RecipeFood.new(recipe_id: params[:recipe_id], food_id: params[:recipe_food][:food_id],
                        quantity: params[:quantity])
    redirect_to recipe_path(params[:recipe_id]) if @r.save
  end

  def destroy
    @recipe_food.destroy
    respond_to do |format|
      format.html { redirect_to recipe_path(params[:recipe_id]), notice: 'Recipe food was successfully destroyed.' }
    end
  end

  def edit; end

  def update
    @recipe_food.update(params)
    respond_to do |format|
      format.html { redirect_to recipe_path(params[:recipe_id]), notice: 'Recipe food was successfully updated.' }
    end
  end
  # def update
  #   respond_to do |format|
  #     if @recipe_food.update(recipe_recipe_food_params)
  #       format.html { redirect_to recipe_food_url(@recipe_food), notice: 'Shopping list was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @recipe_food }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  private

  def set_recipe_food
    @recipe_food = RecipeFood.find(params[:id])
  end
end
