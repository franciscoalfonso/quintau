Rails.application.routes.draw do
    
  root to:"pages#home"
  

     resources :comments
    resources :photos 
    
  get 'home' => 'pages#home' 
  get 'index' => 'pages#index' 
    
  get '/user/:id' => 'pages#profile'
    
  get '/user' => 'pages#home'  
   
  get '/lista' =>'pages#lista'   
    
  get 'explore' => 'pages#explore'

  devise_for :users, controllers:{
        sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    devise_scope :user do
       get "users/home/index",
       to: "users/sessions#index",
       as: "users_index"    
    end
    
    
    
end
