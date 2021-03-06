Rails.application.routes.draw do
  get 'splash/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  devise_scope :user do
    authenticated :user do
      root :to => "categories#index", as: :authenticated_root
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
    unauthenticated :user do
      root :to => "splash#index", as: :unauthenticated_root
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :categories_expenses
  resources :expenses 
  resources :categories
end
