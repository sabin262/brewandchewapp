# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#index'
  resources :foods
  mount Pwa::Engine, at: ''
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
