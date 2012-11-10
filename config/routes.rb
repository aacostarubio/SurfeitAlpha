Surfeitalpha::Application.routes.draw do

  get '/' => 'home#index', :as => :index

  get '/sessions/login' => 'sessions#login', :as => :login
  post '/sessions/create' => 'sessions#create'
  get '/sessions/logout' => 'sessions#destroy'

  resources :users do 
    resources :accounts
  end

    # root :to => 'Directors#index'  DO THIS
 
end


