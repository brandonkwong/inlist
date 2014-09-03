Inlist::Application.routes.draw do

  resource :session, only: [:create, :destroy]

  resources :users, except: [:index, :new]

  get 'welcome/' => 'users#new'

  resources :items, shallow: true do
    resources :comments
  end

  get 'items/' => 'items#index'

  resources :tags

  resources :categories

  root 'users#index'

end
