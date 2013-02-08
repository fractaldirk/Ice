class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def create
    @post = Post.find(params[:post_id])
    if params[:wall_button]
      @comment = @post.comments.create(params[:comment])
      redirect_to "/posts/thewall"
    else
      @comment = @post.comments.create(params[:comment])
      redirect_to post_path(@post)
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
