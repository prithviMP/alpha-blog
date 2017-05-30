Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to:'pages#home'
  get 'pages/home', to:'pages#home'
  get 'pages/about', to: 'pages#about'

  get 'signup', to: 'users#new'

  resources :users, except:[:new]

  resources :articles
end
