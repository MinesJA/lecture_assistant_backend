Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      post '/signup', to: "users#create"
      post '/login', to: "auth#create"
      get '/get_user', to: "auth#show"
      resources :notes
      resources :lists
      resources :listitems
    end
  end


end
