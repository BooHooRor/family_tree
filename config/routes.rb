Rails.application.routes.draw do
  resources :users
  root "users#index"

  get "users/:id/new_parent" => "users#create_parent", as: 'new_parent'
  get "users/:id/new_sibling" => "users#create_sibling", as: 'new_sibling'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
