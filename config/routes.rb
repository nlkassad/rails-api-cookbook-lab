Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  resources :ingredients, except: [:new, :edit]
  get '/ingredients', to: 'ingredients#index'
  get '/ingredient/:id', to: 'ingredient#index'
  patch '/ingredient/:id', to: 'ingredient#changeingredient'

end
