Inlist::Application.routes.draw do

  # APIs
  scope '/api' do
    resources :users, defaults: { format: :json }
    resources :items, defaults: { format: :json }
    resources :tags, defaults: { format: :json }
  end

  # Controllers / Views
  resources :users
  resources :items, shallow: true do
    resources :comments
  end
  resources :tags
  
  resources :categories, shallow: true do
    resources :items
  end

  # Custom Routes
  get 'welcome/' => 'users#new'
  get 'temp/add' => 'items#add'
  post 'temp/add' => 'items#create'
  get 'temp/items' => 'items#list'
  get 'users/:id' => 'users#show'

  # TEST SCRAPER
  get 'test/add' => 'items#add_test'
  post 'test/add' => 'items#create'

  # Session
  resource :session, only: [:create, :destroy]

  # Root
  root 'static#index'

end
