PhcdevworksScripts::Engine.routes.draw do
  namespace :script do
    resources :urls
  end
  namespace :script do
    resources :extensions
  end
  namespace :script do
    resources :listings
  end
  namespace :script do
    resources :authors
  end
  namespace :snippet do
    resources :urls
  end
  namespace :snippet do
    resources :posts
  end
end
