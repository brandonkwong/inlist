Inlist::Application.routes.draw do

  # APIs
  scope '/api' do
    resources :users, only: :index, defaults: { format: :json }
    resources :items, only: :index, defaults: { format: :json }
    resources :tags, only: :index, defaults: { format: :json }
  end

  # Controllers / Views
  resources :users, except: :index
  resources :items, except: :index, shallow: true do
    resources :comments
  end
  resources :tags, except: :index
  
  resources :categories, shallow: true do
    resources :items
  end

  # Custom Routes
  get 'welcome/' => 'users#new'
  get 'temp/add' => 'items#add'
  post 'temp/add' => 'items#create'
  get 'temp/items' => 'items#list'

  # Session
  resource :session, only: [:create, :destroy]

  # Root
  root 'static#index'

end
