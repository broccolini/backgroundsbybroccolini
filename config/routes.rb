Backgroundsbybroccolini::Application.routes.draw do
  root :to => "backgrounds#index"
  resources :backgrounds
  resources :brands

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout"                 => "sessions#destroy", :as => :signout
end
