Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    resource :favorite, only: [:create, :destroy]
  end

  devise_for :users

  root to: "homes#top"
  get "homes/about" => "homes#about", as: "about"
end
