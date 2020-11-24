Rails.application.routes.draw do
  resources :articles

  namespace :api, defaults: { format: :json } do
    resources :users, only: %w[show]
    resources :articles
  end

  post 'api/article', to: 'articles#create'

  devise_for :users,
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'api/login',
      sign_out: 'api/logout',
      registration: 'api/signup'      
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  Rails.application.routes.default_url_options[:host] = 'localhost:3000'
end
