Rails.application.routes.draw do
  devise_for :users
    resources :addresses, only: [:index, :edit, :update, :create, :destroy]
    
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    get 'item/search' => 'items#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
