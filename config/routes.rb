Rails.application.routes.draw do
  # A user can see the list of cocktails
  resources :cocktails, only: [:index]
end
