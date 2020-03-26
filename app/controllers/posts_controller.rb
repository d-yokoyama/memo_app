class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: session[:user_id]).order(created_at: :desc)
    @guest_content = Guest.all
  end
  def create
    if session[:name] == "guest"
      @post = Guest.new(content: params[:name])
      @post.save
      redirect_to("/posts/index")
    else
      @post = Post.new(
        content: params[:name],
        user_id: session[:user_id]
      )
      @post.save
      redirect_to("/posts/index")
    end
  end
  def show
    if session[:name] == "guest"
      @post = Guest.find_by(id: params[:id])
    else
      @post = Post.find_by(id: params[:id])
    end
  end
  def update
    if session[:name] == "guest"
      @post = Guest.find_by(id: params[:id])
      @post.content = params[:content]
      @post.save
      redirect_to("/posts/index")
    else
      @post = Post.find_by(id: params[:id])
      @post.content = params[:content]
      @post.save
      redirect_to("/posts/index")
    end
  end
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    @post.save
    redirect_to("/posts/index")
  end
end
