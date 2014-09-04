Inlist::Application.routes.draw do

  scope '/api' do
    resources :users, defaults: { format: :json }
    resources :items, defaults: { format: :json }, shallow: true do
      resources :comments
    end
    resources :tags, only: [:index, :destroy], defaults: { format: :json }
  end

  resources :categories

  get 'welcome/' => 'users#new'
  get 'temp/items' => 'items#list'

  resource :session, only: [:create, :destroy]

  root 'static#index'

end
