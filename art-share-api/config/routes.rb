Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'users', to: 'users#index', as: 'users'
  # post 'users', to: 'users#create'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get 'users/:id', to: 'users#show', as: 'user'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'
  
  resources :users, only: %i[index create destroy show update] do
      resources :artworks, only: [:index]
  end

  resources :artworks, only: %i[create destroy show update]
  resources :artwork_shares, only: %i[create destroy]

end

# IntroRailsVideoDemo::Application.routes.draw do
#   resources :cats do
#     # /cats/:cat_id/toys/
#     resources :toys, only: [:index, :new]
#   end

#   # /toys/:id
#   resources :toys, only: [:create, :show, :update, :destroy] do
#     # /toys/:id/memories
#     # 2 levels deep
#     # resources :memories, only: :index
#   end

#   root to: redirect("/cats")
# end

