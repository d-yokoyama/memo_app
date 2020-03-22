Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#top_view"

  get "posts/index" => "posts#index"
  post "posts/create" => "posts#create"
  get "posts/:id/show" => "posts#show"
  get "posts/create" => "home#top"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  post "user/signup" => "users#signup"
  post "user/signin" => "users#signin"
  post "user/logout" => "users#logout"

  post "guest/login" => "guests#login"
  get "guest/:id/show" => "guests#show"
  post "guest/:id/update" => "guests#update"
end
