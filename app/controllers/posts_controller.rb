class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def create
    @post = Post.new(content: params[:name])
    @post.save
    redirect_to("/posts/index")
  end
  def show
    @post = Post.find_by(id: params[:id])
  end
end
