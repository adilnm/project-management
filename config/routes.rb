Rails.application.routes.draw do
  resources :projects
  resources :users, only:[:create]

  get 'login' => "sessions#new"
  post 'sessions' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
