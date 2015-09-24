Rails.application.routes.draw do
  root to: 'questions#index' #instead of having a seperate welcome_controller

  resources :questions do 
    resources :answers
  end

  resources :users

  # for upvoting

  # resources :questions do 
  #   member do 
  #     post '/upvote' => 'question#upvote'
  #   end
  #   resources :comments do
  #     member do 
  #       # member routes require an id
  #       post '/upvote' => 'answers#upvote'
  #     end
  #   end
  # end

  # sessions
  get 'signin' => 'sessions#new'
  post 'signin' => 'sessions#create'
  delete 'signout' => 'sessions#destroy'
end
