class GuestsController < ApplicationController
  def login
    guest = Guest.all.destroy_all
    guest = Guest.new(content: "ゲストログインしました")
    guest.save
    session[:name] = "guest"
    redirect_to("/posts/index")
  end
  def show
    @post = Guest.find_by(id: params[:id])
    render("/posts/show")
  end
  def update
    post = Guest.find_by(id: params[:id])
    post.content = params[:content]
    post.save
    redirect_to("/posts/index")
  end
  def destroy
    post = Guest.find_by(id: params[:id])
    post.destroy
    post.save
    redirect_to("/posts/index")
  end
end
