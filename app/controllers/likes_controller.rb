class LikesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @post.likes.create(user: current_user)
    redirect_to root_path
  end

end
