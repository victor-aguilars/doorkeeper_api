Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :authorizations, :applications,
      :authorized_applications
  end

  devise_for :users
  
  namespace :api do
    resources :items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'
end
