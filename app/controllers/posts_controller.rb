class PostsController < ApplicationController
	def new
	end

	def index
		@posts = Post.all
	end

	def create
		Post.create!(:name => params[:name], :body => params[:body])
		redirect_to '/posts'
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
		# This goes with the get route that displays the edit form
	end

	def update
		@post = Post.find(params[:id])
		#post_params??
		if @post.update_attributes(:name => params[:name], :body => params[:body])
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		Post.destroy(params[:id])
		redirect_to '/posts'
	end

end