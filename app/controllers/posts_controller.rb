class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
    @Post = Post.find(params[:id])
  end

  def new
    @Post = Post.new
  end

  def create
    @Post = Post.new(post_params)

    if @Post.save
      redirect_to @Post
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @Post.update(post_params)
      redirect_to @Post
    else
      render 'edit'
    end
  end

  def destroy
    @Post.destroy
    redirect_to root_path
  end

  private

  def find_post
    @Post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
