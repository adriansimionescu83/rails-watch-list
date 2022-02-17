Rails.application.routes.draw do
  get 'bookmarks/index'
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'lists/index'
  get 'lists/new'
  get 'lists/create'
  get 'lists/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [ :index, :new, :create, :show ] do
    resources :bookmarks, only: [:index, :new, :create, ]
  end
  delete 'bookmark/:id', to: 'bookmarks#destroy', as: :bookmark
end
