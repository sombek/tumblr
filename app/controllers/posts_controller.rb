class PostsController < ApplicationController
	
	def index
		@posts = Post.all.order('created_at DESC')
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save 
			redirect_to@post #!redirect does http refresh for more go to 006 in 4:00 mintus 
		else 
			render 'new'
		end
	end
	def show 
		@post = Post.find(params[:id])
	end

	private 
		def post_params
			params.require(:post).permit(:title, :body)
		end
end
