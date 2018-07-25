# frozen_string_literal: true

Rails.application.routes.draw do
  get '/petfinder/:location' => 'petfinder#index' #points to the index method on petfinder controller

  resources :foods, except: %i[new edit]
  resources :pets, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  # get '/shelters' => 'pets#getShelters'
end
