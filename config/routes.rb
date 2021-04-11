PhcdevworksScripts::Engine.routes.draw do

    # API Routes
    namespace :api, :path => "", :constraints => {:subdomain => "api"} do
        namespace :v1 do
            resources :mains, defaults: {format: "json"}
            resources :informations, defaults: {format: "json"}
            resources :versions, defaults: {format: "json"}
        end
    end

    # Script CDN Routes
    namespace :script do
        resources :listings, class_name: "PhcdevworksScripts::Script::Listing" do
            resources :urls, class_name: "PhcdevworksScripts::Script::Url"
        end
        resources :authors, class_name: "PhcdevworksScripts::Script::Author"
        resources :extensions, class_name: "PhcdevworksScripts::Script::Extension"
        resources :versions, class_name: "PhcdevworksScripts::Script::Version"
    end

    # Script Snippet Routes
    namespace :snippet do
        resources :posts, class_name: "PhcdevworksScripts::Snippet::Post" do
            resources :urls, class_name: "PhcdevworksScripts::Snippet::Url"
        end
    end

    # Mount Routes
    mount PhcdevworksAccounts::Engine, :at => '/'
    mount PhcdevworksCoreModules::Engine, :at => '/'

end
