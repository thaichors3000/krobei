Rails.application.routes.draw do
  root to: 'home#index'
  
  resources :courses
  resources :teachers
  
  resources :students do
    resources :courses
  end

  resources :enrolments
end
