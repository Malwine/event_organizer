Rails.application.routes.draw do

  resources :events, only: [:new, :create, :show]

  root 'welcome#index'
end
