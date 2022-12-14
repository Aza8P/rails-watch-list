Rails.application.routes.draw do
  get 'bookmarks/new'

  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: [:destroy]
end
