Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users', to: 'devise/registrations#new'
    get '/users/password', to: 'devise/passwords#new'
    get '/users/sing_out', to:  'devise/sessions#destroy'

  end

  get 'home/about'
  resources :posts

   root "posts#index"
end
