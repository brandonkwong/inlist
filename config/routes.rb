Inlist::Application.routes.draw do
  # APIs
  scope '/api' do
    resources :users, defaults: { format: :json }
    resources :items, defaults: { format: :json }
    resources :tags, defaults: { format: :json }
  end

  # Controllers / Views
  resources :users, except: :new
  resources :items, shallow: true do
    resources :comments
  end
  resources :categories, shallow: true do
    resources :items
  end

  # test whether this needs to be included
  resources :tags

  # Welcome / Sign Up
  get 'welcome/' => 'users#new'

  # Note: delete after testing
  get 'temp/items' => 'items#list'
  get 'temp/add' => 'items#add'
  post 'temp/add' => 'items#create'
  get 'users/:id' => 'users#show'


  # Session
  resource :session, only: [:create, :destroy]

  # Root
  root 'static#index'
end
