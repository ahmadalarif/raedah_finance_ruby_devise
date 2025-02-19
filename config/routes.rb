Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about' => 'about#index'
  # config/routes.rb
  get '/AlRaedah Financing Solution', to: 'about#index'
  root 'about#index'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
    
end
