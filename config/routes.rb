Rails.application.routes.draw do
  devise_for :users
  get 'pages/skin-dongle'

  get 'pages/police'

  get 'pages/destiny'

  get 'pages/hunter'

  get 'pages/titan'

  get 'pages/worlock'

  get 'pages/shiny'

  get 'pages/this'

  get 'pages/is'

  get 'pages/sparta'

  get 'pages/tiny-tim'

  get 'pages/crowbar'

  get 'pages/cheetos'

  get 'pages/lips'

  get 'pages/stomach'

  get 'pages/about'

  get 'pages/crowds'

  get 'pages/cakes'

  get 'pages/frosting'

  get 'pages/sugars'

  resources :blogs

  root to: 'blogs#index'
end
