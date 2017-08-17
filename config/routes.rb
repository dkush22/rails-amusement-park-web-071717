Rails.application.routes.draw do

root 'application#hello'
resources :users, :rides, :attractions

get '/signin' => 'sessions#new'
post '/signin' => 'sessions#create'
post '/logout' => 'sessions#destroy'



end