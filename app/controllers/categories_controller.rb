class CategoriesController < ApplicationController
	def new
		# render 
	end

	def index
		@categories = Category.all
	end

	def create
    Category.create!(:name => params[:name])
    redirect_to '/'
	end

	def show
		@category = Category.find(params[:id])
	end

	def destroy
		Category.destroy(params[:id])
		redirect_to '/'
	end

end