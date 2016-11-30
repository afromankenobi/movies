Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root 'movies#index'

  resources :users
  resources :tags
  resources :movies do
    member do
      get 'delete_tag/:tag_id', to: "movies#delete_tag", as: "delete_tag"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
