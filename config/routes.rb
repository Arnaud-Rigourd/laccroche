Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  resources :projects, only: [:index, :show, :new, :create] do
    collection do
      get :top
    end
    resources :likes, only: [:create]
  end

  resources :users, only: [:show] do
    resources :chatrooms, only: [:create]
  end

  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end

  get "profil", to: "pages#profil"
end
