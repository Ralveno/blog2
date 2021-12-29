Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #get 'home/index'
  get "/bienvenida", to: "home#index"

  root to: "home#index"

  get "articles", to:"articles#index"  #mostrar todos los articulso 1 x 1
  get "articles/new", to: "articles#new", as: :new_articles

  get "articles/:id", to: "articles#show"  #Pasamos un identificador :id comodin
  get "articles/:id/edit", to: "articles#edit"  #Pasamos un identificador :id comodin
  
  patch "articles/:id", to: "articles#update", as: :article
   post "articles", to: "articles#create"

  delete "articles/:id", to: "articles#destroy"
end
  