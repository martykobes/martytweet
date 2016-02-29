Rails.application.routes.draw do
  devise_for :users
  resources :tweets
  resources :relationships
  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles' => 'profiles#index'
  get 'home' => 'profiles#feed'
  get 'places' => 'tweets#index'
  resources :tweets do
    resource :like
  end
  root 'tweets#index'
end
