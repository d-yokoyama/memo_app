class UsersController < ApplicationController
  def signup
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    @user.save
    redirect_to("/posts/index")
  end
  def signin
    @user = User.find_by(
      name: params[:name],
      password: params[:password]
    )
    if @user
      flash[:notice] = "ログインしました"
      session[:name] = @user.name
      redirect_to("/posts/index")
    else
      redirect_to("/")
    end
  end
  def logout
    session[:name] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end
end
