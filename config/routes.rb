Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount RedactorRails::Engine => '/redactor_rails'
  devise_for :users
  resources :posts do
  resources :comments
  end
  root 'posts#index'
end
