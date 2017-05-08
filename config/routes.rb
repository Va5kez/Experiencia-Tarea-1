Rails.application.routes.draw do
  root "home#index"

  get "/usuarios" => "users#index"
  get "/articulos" => "articles#index"
  get "/nuevo_usuario" => "users#new"
  get "/nuevo_articulo" => "articles#new"

  resources :users do
    resources :articles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
