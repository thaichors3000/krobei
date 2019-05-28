Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/, defaults: {locale: "en"} do
    root to: 'home#index'

    resources :courses
    resources :teachers
    resources :enrolments
    resources :students do
      resources :courses
    end
  end
end
