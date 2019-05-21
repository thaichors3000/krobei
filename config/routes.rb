Rails.application.routes.draw do
  get 'enrolments/index'
  get 'enrolments/create'
  get 'enrolments/new'
  get 'enrolments/destroy'
  get 'enrolments/show'
  root to: 'home#index'
  
  resources :courses
  resources :teachers
  resources :enrolments
  resources :students do
    resources :courses
  end
end
