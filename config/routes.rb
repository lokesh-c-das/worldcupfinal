Rails.application.routes.draw do
  
  root to: 'world_cup_finals#index'
  get 'world_cup_finals', to:'world_cup_finals#index', as:'world_cup_finals'

  #create 
  get 'world_cup_finals/new', to:'world_cup_finals#new', as:'new_world_cup_final'
  get 'world_cup_finals/:id', to:'world_cup_finals#show', as:'world_cup_final'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
