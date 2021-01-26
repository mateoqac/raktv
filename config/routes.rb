Rails.application.routes.draw do
  scope path: '/api' do
    api_version(module: 'Api::V1', path: { value: 'v1' }, defaults: { format: 'json' }) do
      resources :users, only: [] do
        resources :purchases, only: [:create],path: :purchase
        get 'library' => 'users#library'
      end
      resources :seasons, :movies, only: [:index]
      root 'home#index'
    end
  end
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
end
