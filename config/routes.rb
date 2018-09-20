Rails.application.routes.draw do
  resources :users
  resources :story_modules
  resources :locations
  resources :games
  resources :events
  resources :characters
  resources :chapters
  resources :campaigns
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
