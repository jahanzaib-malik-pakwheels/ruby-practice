Rails.application.routes.draw do
  devise_for :users
  #root "articles#index"
  root to: 'pages#home'
  resources :articles do
	resources :comments
  end
  get "/my-articles", to: "articles#my_articles"
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
