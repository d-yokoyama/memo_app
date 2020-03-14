class UsersController < ApplicationController
  def signup
    @user = User.new(
      name: params[:name],
      email: params[:email],
    )
    @user.save
    redirect_to("/posts/index")
  end
end
