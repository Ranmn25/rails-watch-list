Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lists', to: 'lists#index'

  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'

  get 'lists/:id', to: 'lists#show', as: 'list'

  get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
  post 'lists/:id/bookmarks', to: 'bookmarks#create'

  delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
