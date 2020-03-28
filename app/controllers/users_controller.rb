class UsersController < ApplicationController
  def signup
    if User.find_by(name: params[:name])
      flash[:notice] = "このIDはすでに使われています"
      redirect_to("/")
    elsif User.find_by(email: params[:email])
      flash[:notice] = "このメールアドレスは既に登録されています"
      redirect_to("/")
    else
      flash[:notice] = "新規登録しました"
      session[:user_id] = params[:id]
      session[:name] = params[:name]
      @user = User.new(
        name: params[:name],
        email: params[:email],
        password: params[:password]
      )
      @user.save
      redirect_to("/posts/create")
    end
  end
  def signin
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      flash[:notice] = "ログインしました"
      session[:user_id] = @user.id
      session[:name] = @user.name
      redirect_to("/posts/index")
    else
      redirect_to("/")
    end
  end
  def logout
    session[:user_id] = nil
    session[:name] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end
end
