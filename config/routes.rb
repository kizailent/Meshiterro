Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :index, :show, :create, :destroy]

  devise_for :users

  root to: "homes#top"
  get "homes/about" => "homes#about", as: "about"
end
