Rails.application.routes.draw do
  root             'products#index'
  get 'help'       => 'static_pages#help'
  get 'about'      => 'static_pages#about'
  get 'contact'    => 'static_pages#contact'
  get 'signup'     => 'users#new'
  get 'add'        => 'products#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
