Backgroundsbybroccolini::Application.routes.draw do
  root :to => "backgrounds#index"

  resources :backgrounds, :except => [:show]
  resources :brands,      :except => [:show]

  match "/backgrounds/:slug" => "backgrounds#show", :as => :background
  match "/brands/:slug"      => "brands#show",      :as => :brand

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout"                 => "sessions#destroy", :as => :signout
end
