Rails.application.routes.draw do



  devise_for :users

  root 'static_pages#home'
  get 'about', to: "static_pages#about"
  get 'contact', to: "static_pages#contact"
  get 'services', to: "static_pages#services"
  get 'prices', to: "static_pages#prices"
  get 'packs', to: "static_pages#packs"
  get 'faq', to: "static_pages#faq"
  post '/home', to: "static_pages#home"

end
