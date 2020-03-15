Rails.application.routes.draw do
  
  devise_for :users
  root to: 'world_cup_finals#index'
  get 'world_cup_finals', to:'world_cup_finals#index', as:'world_cup_finals'

  #create 
  get 'world_cup_finals/new', to:'world_cup_finals#new', as:'new_world_cup_final'
  get 'world_cup_finals/:id', to:'world_cup_finals#show', as:'world_cup_final'

  post 'world_cup_finals', to:'world_cup_finals#create' #create


  #edit 
  get 'world_cup_finals/:id/edit', to:'world_cup_finals#edit', as:'edit_world_cup_final'
  patch 'world_cup_finals/:id', to:'world_cup_finals#update' #update
  put 'world_cup_finals/:id', to:'world_cup_finals#update'

  delete 'world_cup_finals/:id', to:'world_cup_finals#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
