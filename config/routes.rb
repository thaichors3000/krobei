Rails.application.routes.draw do
  resources :students
  root to: 'home#index'
  
  resources :teachers
end
