Rails.application.routes.draw do

  root 'static_pages#home'

  namespace :api do
    resources :citations, only: [:index, :create]
  end

end
