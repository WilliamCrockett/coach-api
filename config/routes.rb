# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sessions
  # RESTful routes
  # commented out as the user doesn't need to make a request to this
  # resources :examples, except: %i[new edit]
  # resources :users, only: %i[index show update]
  # trying to limit what data can get gotten from the db
  resources :users, only: %i[update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
