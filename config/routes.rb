Rails.application.routes.draw do
  root 'courses#index'
  devise_for :users

  resources :courses, only: [:new, :index, :create, :show]
end