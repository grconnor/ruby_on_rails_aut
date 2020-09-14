Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  devise_for  :users
  root controller:  :articles, action:  :index
  resources :articles, only: [:create, :show, :new, :edit, :update]
end
