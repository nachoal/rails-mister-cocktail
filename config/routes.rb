Rails.application.routes.draw do
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/new', to: 'cocktails#new'
  # get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  # post 'cocktails', to: 'cocktails#create'

  # get 'cocktails/:id/doses/new', to: 'doses#new', as: 'dose_new'
  # post 'cocktails/:id/doses', to: 'doses#create'
  # delete 'doses/:id', to: 'doses#destroy'
  root 'cocktails#index'

  resources :cocktails, only: %i[index new show create] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: %i[destroy]
end
