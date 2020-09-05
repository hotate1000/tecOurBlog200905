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

  def update
    post_update = Post.find(params[:id])
    post_update.update(post_params)
    redirect_to post_path(post_update.id)
  end

  def destroy
    post_destroy = Post.find(params[:id])
    post_destroy.destroy()
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

end
