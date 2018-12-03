Rails.application.routes.draw do

  root 'static_pages#home'

  devise_for :users

  get 'about', to: "static_pages#about"
  get 'contact', to: "static_pages#contact"
  get 'customers_reviews', to: "static_pages#customers_reviews"
  get 'services', to: "static_pages#services" 
  
end
