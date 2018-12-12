Rails.application.routes.draw do

  resources :property

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :charges

  get 'contact-me', to: 'static_pages#new', as: 'new_message'
  post 'contact-me', to: 'static_pages#create', as: 'create_message'

  root 'static_pages#home'
  get 'about', to: "static_pages#about"
  get 'contact', to: "static_pages#contact"
  get 'services', to: "static_pages#services"
  get 'prices', to: "static_pages#prices"
  get 'packs', to: "static_pages#packs"
  get 'faq', to: "static_pages#faq"

end
