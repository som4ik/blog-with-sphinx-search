Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount RedactorRails::Engine => '/redactor_rails'
  # match 'users/:id' => 'users#show', via: :get
  devise_for :users 
  resources :users do 
  get :info_stop,on: :member
  # get 'users/:id' => 'users#show'
  end
  resources :posts do
  	get :confirm,on: :member
  	get :ignore,on: :member
  resources :comments
  end
  root 'posts#index'
end
