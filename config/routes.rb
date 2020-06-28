Rails.application.routes.draw do
  resources :portfolios
  resources :blogs

  root to: "pages#home"
  get "about_me", to: "pages#about"
  get "contact", to: "pages#contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
