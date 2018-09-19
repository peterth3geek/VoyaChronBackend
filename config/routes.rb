Rails.application.routes.draw do
  resources :games
  resources :character_stats
  resources :items
  resources :character_items
  resources :chapters
  resources :locations
  resources :story_modules
  resources :events
  resources :user_characters
  resources :character_stats_dn_d5es
  resources :characters
  resources :character_campaigns
  resources :campaigns
  resources :user_campaigns
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
