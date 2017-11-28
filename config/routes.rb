Rails.application.routes.draw do
  root :to => "users#index"

  resources :users do
    resources :questions
  end

  resources :questions do
    resources :answers
  end

end
