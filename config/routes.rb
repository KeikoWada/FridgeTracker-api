# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :users, only: %i[index show update]
  resources :expiration_dates, except: %i[new edit]
  resources :examples, except: %i[new edit]
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # get '/expiration-dates' => 'expiration_dates#index'
  # get '/expiration-dates/:id' => 'expiration_dates#show'
  # delete '/expiration-dates/:id' => 'expiration_dates#destroy'
  # patch '/expiration-dates/:id' => 'expiration_dates#update'
  # post '/expiration-dates' => 'expiration_dates#create'
end
