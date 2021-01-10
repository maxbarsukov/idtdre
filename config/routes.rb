Rails.application.routes.draw do
  devise_for :accounts

  get 'u/:username' => 'public#index', as: :profile

  resources :communities do
    resources :posts
  end

  root to: 'public#index'
end
