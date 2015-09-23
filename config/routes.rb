Rails.application.routes.draw do
  root to: 'questions#index' #instead of having a seperate welcome_controller

  resources :questions do 
    resources :answers
  end

  resources :users

  # sessions
  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  delete 'signout' => 'sessions#destroy'
end
