class CategoriesController < ApplicationController
	def new
		# render 
	end

	def index
		@categories = Category.all
	end

	def create
    #Create the new category
    #take the user back to index
    Category.create!(:name => params[:name])
    redirect_to '/'
	end
end