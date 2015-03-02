Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  resources :categories do
    resources :products do
      resources :reviews
    end
  end
  resources :users
    match 'users/show', to: 'users#show', via: 'get'

  root to: 'categories#index'
end

