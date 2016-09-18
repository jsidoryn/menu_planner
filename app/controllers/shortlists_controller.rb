class ShortlistsController < ApplicationController
	def show
		@shortlist = Shortlist.find(params[:id])
		@recipes = @shortlist.recipes
	end
end
