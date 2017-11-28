Rails.application.routes.draw do
  
  resources :users do
    resources :questions
  end

  resources :questions do
    resources :answers
  end

end
