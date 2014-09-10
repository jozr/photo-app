Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root :to => 'users#index'
  resources :users do
    resources :photos do
      resources :tags
      resources :likes
    end
  end

  resources :photos do
    resources :likes
  end
  resources :sessions
end
