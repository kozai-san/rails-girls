Rails.application.routes.draw do
  resources :comments
  get 'pages/info'
  resources :ideas
  root to: redirect('/ideas')
  get "pages/info"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
