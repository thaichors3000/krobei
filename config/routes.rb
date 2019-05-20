Rails.application.routes.draw do
  root to: 'home#index'

  resources :teachers
  resources :enrolments

  resources :students do
    resources :courses
    resources :enrolments
  end

  resources :courses do
    resources :students
    resources :enrolments
  end
end
