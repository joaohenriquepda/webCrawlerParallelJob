require 'sidekiq/web'

Rails.application.routes.draw do

  #route for sidekiq list jobs
  mount Sidekiq::Web => '/sidekiq'
  resources :pages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
