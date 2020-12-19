Rails.application.routes.draw do
  devise_for :users
    resources :addresses, only: [:index, :edit, :update, :create, :destroy]
    get 'genres/:id' => 'genres#show', as: 'genre_show'
    resources :cart_items, only: [:create, :index, :destroy, :update]
    delete 'cart_items' => 'cart_items#all_destroy', as: 'cart_all_destroy'
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    get 'item/search' => 'items#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
