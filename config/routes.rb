Rails.application.routes.draw do
  # A user can see the list of cocktails
  resources :cocktails, only: [:index, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: :destroy
end
