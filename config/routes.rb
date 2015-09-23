Rails.application.routes.draw do
  root to: 'questions#index'

  resources :questions do 
    resources :answers
  end

  resources :users

  
  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  delete 'signout' => 'sessions#destroy'
end
