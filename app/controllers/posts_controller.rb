class PostsController < ApplicationController
    before_action user_signed_in?, only: [:new, :create]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
          redirect_to root_path
        else
            render :new
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :body)
    end

end
