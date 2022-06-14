Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles

  root 'welcome#index'
  get 'about', to: 'welcome#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
