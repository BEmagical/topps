Blog::Application.routes.draw do
  devise_for :users, 
    :controllers => {
      :sessions => "users/sessions",
      :registrations => "users/registrations",
      :passwords => "users/passwords"
    }
    
  devise_scope :user do
    get "login", :to => "users/sessions#new"
  end    

  root "static_pages#home"

  match '/features',    to: 'static_pages#features',    via: 'get'
  match '/download',    to: 'static_pages#download',    via: 'get'
  match '/blog',        to: 'static_pages#blog',        via: 'get'
end
