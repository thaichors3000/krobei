Rails.application.routes.draw do
  root to: 'home#index'
  
  resources :courses
  resources :teachers
  resources :students
end
