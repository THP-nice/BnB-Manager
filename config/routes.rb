Rails.application.routes.draw do


devise_for :users

root 'static_pages#home'
get 'about', to: "static_pages#about"
get 'contact', to: "static_pages#contact"
get 'customers_reviews', to: "static_pages#customers_reviews"
get 'services', to: "static_pages#services" 
  
end
