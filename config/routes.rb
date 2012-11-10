Surfeitalpha::Application.routes.draw do

  get '/' => 'home#index', :as => :index



  get '/sessions/login' => 'sessions#login', :as => :login
  post '/sessions/create' => 'sessions#create'
  get '/sessions/logout' => 'sessions#destroy', :as => :logout
  get '/sessions/fail' => 'sessions#fail', :as => :fail


  resources :users do 
    resources :accounts
  end

    # root :to => 'Directors#index'  DO THIS
 
end


