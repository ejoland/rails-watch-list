Rails.application.routes.draw do
  root 'application#index'

  resources :bookmarks, only: %i[new create destroy]

  resources :movies do
    resources :bookmarks, only: %i[new create destroy]
  end

  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create]
  end
end
