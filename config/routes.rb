Surfeitalpha::Application.routes.draw do

  get '/' => 'home#index', :as => :index

  get '/sessions/login' => 'sessions#login', :as => :sign_in
  post '/sessions/create' => 'sessions#create'
  get '/sessions/logout' => 'sessions#destroy'

  resources :users do 
    resources :accounts
  end
 
end


