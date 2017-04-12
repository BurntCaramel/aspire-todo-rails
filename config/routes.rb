Rails.application.routes.draw do
  resources :lists, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :todo_items
  end
  root 'lists#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
