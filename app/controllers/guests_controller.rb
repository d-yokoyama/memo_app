class GuestsController < ApplicationController
  def login
    guest = Guest.new(content: "ゲストログインしました")
    guest.save
    session[:name] = "guest"
    redirect_to("/posts/index")
  end
end
