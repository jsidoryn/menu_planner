class ShortlistsController < ApplicationController

	before_action :set_shortlist

	def show
		@recipes = @shortlist.recipes
	end

	def add
		@recipe = Recipe.find(params[:id])
		@shortlist.recipes << @recipe
		redirect_to recipes_path(@recipe), notice: 'Recipe was successfully added to shortlist.'
	end

	def remove
	  @recipe = Recipe.find(params[:id])	
		@shortlist.recipes.destroy(@recipe)
		redirect_to recipes_path(@recipe), notice: 'Recipe was successfully remove from the shortlist.'
	end

	def remove_all
		@shortlist.recipes.clear
		redirect_to recipes_path
	end

	private

	def set_shortlist
		@shortlist = Shortlist.find(1)
	end
end
