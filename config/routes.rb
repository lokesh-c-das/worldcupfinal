Rails.application.routes.draw do
  
  root to: 'world_cup_finals#index'
  get 'world_cup_finals', to:'world_cup_finals#index', as:'world_cup_finals'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
