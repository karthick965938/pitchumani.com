Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations',
    omniauth_callbacks: 'user/omniauth_callbacks'
  }
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'home/vote_now'
  post 'home/create_post'
end
