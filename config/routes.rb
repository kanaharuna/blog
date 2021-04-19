Rails.application.routes.draw do
  root to: "homes#top"
  get "about" => "homes#about"
  devise_for :users
  resources :users, only:[:index,:show,:edit,:update]
  resources :post_blogs
end
