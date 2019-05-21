Rails.application.routes.draw do
  scope '(:locale)' do
    root to: 'home#index'

    resources :courses
    resources :teachers
    resources :enrolments
    resources :students do
      resources :courses
    end
  end
end
