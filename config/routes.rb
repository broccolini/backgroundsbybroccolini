Backgroundsbybroccolini::Application.routes.draw do
  root :to => "backgrounds#index"

  match "tags"       => "tags#index"
  match "tags/:slug" => "tags#show", :as => :tag

  resources :brands,      :except => [:show]
  resources :backgrounds, :except => [:show]

  match "/brands/:slug"             => "brands#show",      :as => :brand
  match "/backgrounds/:slug"        => "backgrounds#show", :as => :background

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout"                 => "sessions#destroy", :as => :signout
end
