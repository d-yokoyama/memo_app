Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#top_view"

  get "posts/index" => "posts#index"
  post "posts/create" => "posts#create"
  get "posts/:id/show" => "posts#show"
  get "posts/create" => "home#top"
end
