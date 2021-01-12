Rails.application.routes.draw do
  devise_for :accounts
  get 'u/:username' => 'public#profile', as: :profile

  resources :communities do
    resources :posts
  end

  resource :subscriptions
  resource :comments, only: [:create]

  post 'post/vote' => 'votes#create'

  root to: 'public#index'
end
