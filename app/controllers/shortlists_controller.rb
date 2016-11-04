class ShortlistsController < ApplicationController
  before_action :set_shortlist

  def show
    @recipes = @shortlist.recipes
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @shortlist.recipes << @recipe
    redirect_to shortlist_path(@shortlist), notice: 'Recipe was successfully added to shortlist.'
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @shortlist.recipes.delete(@recipe)
    redirect_to recipe_path(@recipe), notice: 'Recipe was successfully remove from the shortlist.'
  end

  def remove_all
    @shortlist.recipes.clear
    redirect_to shortlist_path(@shortlist)
  end

  private

  def set_shortlist
    @shortlist = Shortlist.find(1)
  end
end
