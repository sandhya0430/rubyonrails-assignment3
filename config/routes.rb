Rails.application.routes.draw do
  devise_for :users
  resources :students
  resources :teachers
  root to: 'students#index'
end
