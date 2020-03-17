class CommentsController < ApplicationController

  def index
    @comments = @post.comments.all.order(created_at: :desc)
  end

  def create
      @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:comment))
      redirect_to post_path(@post)
  end

  def destroy
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @comment.destroy
      redirect_to post_path(@post)
  end
end
