class PostsController < ApplicationController

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @user = current_user
    @user.posts.create(params[:post].permit(:message, :image))
    redirect_to root_path
  end

  def index
    @posts = Post.all
  end

end
