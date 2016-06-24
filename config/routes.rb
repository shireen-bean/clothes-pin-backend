Rails.application.routes.draw do
  resources :shoes, except: [:new, :edit]
  resources :accessories, except: [:new, :edit]
  resources :bottoms, except: [:new, :edit]
  resources :shirts, except: [:new, :edit]
  resources :profiles, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
