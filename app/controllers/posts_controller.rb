class PostsController < ApplicationController

    def index
        @posts = Post.all
    end 

    def create
        
        # render plain: params[:post].inspect
        @post = Post.new(post_params)
 
        @post.save
        redirect_to @post

    end 
    def show
        @post = Post.find(params[:id])
    end

    def new
        @post= Post.new
    end 

    def edit
        @post = Post.find(params[:id])

    end 

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
           redirect_to posts_path
        else
            render 'edit'
        end
    end 

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
        redirect_to posts_path
        end
    end 

    private
    def post_params
        params.require(:post).permit(:title, :text)
    end


end
