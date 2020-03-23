class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: session[:user_id]).order(created_at: :desc)
    @guest_content = Guest.all
  end
  def create
    @post = Post.new(
      content: params[:name],
      user_id: session[:user_id]
    )
    @post.save
    redirect_to("/posts/index")
  end
  def show
    @post = Post.find_by(id: params[:id])
  end
  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.save
    redirect_to("/posts/index")
  end
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    @post.save
    redirect_to("/posts/index")
  end
end
