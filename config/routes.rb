Rails.application.routes.draw do
  devise_for :accounts
  resources :communities do
    resources :posts
  end

  root to: 'public#index'
end
