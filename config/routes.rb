Rails.application.routes.draw do
  resources :post_images, only: [:new, :index, :show, :create]

  devise_for :users

  root to: "homes#top"
  get "homes/about" => "homes#about"
end
