class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(posts_params)
    
    if @post.save
      redirect_to posts_path
      flash[:success] = "Post stworzony"
    else
      render "new"
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update_attributes(posts_params)
      redirect_to posts_path
      flash[:success] = "Post zmieniony"
    else
      render "edit"
    end
  end
  
  def destroy
  end
  
  private
    
    def posts_params
      params.require(:post).permit(:title, :content)
    end
end
