Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :new, :create, :show ] do
    resources :doses, except: [ :destroy ] do
      resources :ingredients
    end
  end

  resources :doses, only: [ :destroy ]

  root "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


