Rails.application.routes.draw do
  root 'home#index'
  post 'purchase' => 'purchases#purchase'
  get 'library' => 'user#library'

  resources :movies, :seasons, only: [:index]
end
