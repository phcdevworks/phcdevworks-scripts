Rails.application.routes.draw do

    # Root Path
    root :to => "website/page#index"

    # Mount Engine for Testing
    mount PhcdevworksScripts::Engine => "/"

end
