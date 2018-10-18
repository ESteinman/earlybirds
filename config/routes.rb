Rails.application.routes.draw do
  root controller: :articles, action: :index 
  
  resources :articles, only: [:create, :new]
end
