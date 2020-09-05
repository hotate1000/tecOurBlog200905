class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end

  def new
    @post_new  = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post_show = Post.find(params[:id])
  end

  def edit
    @post_edit = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
