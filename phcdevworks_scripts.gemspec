$:.push File.expand_path("lib", __dir__)
require "phcdevworks_scripts/version"

Gem::Specification.new do |spec|

  spec.name        = "phcdevworks_scripts"
  spec.version     = PhcdevworksScripts::VERSION
  spec.authors     = ["PHCDevworks"]
  spec.email       = ["imfo@phcdevworks.com"]
  spec.homepage    = "https://phcdevworks.com/"
  spec.summary     = "Rails 6 - Engine - Script CDN and Snippets"
  spec.description = "Ruby on Rails 6 Script CDN and Code Snippets Listing Management Engine."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #spec.metadata["allowed_push_host"] = "TODO: Set to "http://mygemserver.com""
  #else
  #raise "RubyGems 2.0 or newer is required to protect against " \
  #"public gem pushes."
  #end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency "rails", "~> 6.1"
  spec.add_dependency "jbuilder", "~> 2.10"
  spec.add_dependency "paper_trail", "~> 11.0"

  # Theme Dependencies
  spec.add_dependency "phcthemes_admin_panel_pack", "~> 3.2"
  spec.add_dependency "phcthemes_web_theme_pack", "~> 3.2"

  # Helper Dependencies
  spec.add_dependency "phcdevworks_active_menus", "~> 2.2"
  spec.add_dependency "phcdevworks_core", "~> 2.2"
  spec.add_dependency "phcdevworks_notifications", "~> 2.2"
  spec.add_dependency "phcdevworks_titleseo", "~> 3.2"
  spec.add_dependency "phcdevworks_core_modules", "~> 6.5"

   # Frontend Dependencies
  spec.add_dependency "wicked", "~> 1.3"
  spec.add_dependency "friendly_id", "~> 5.4"
  spec.add_dependency "gravtastic", "~> 3.2"
  
  # Mailer Dependencies
  spec.add_dependency "mail_form", "~> 1.8"

  # Images & Service Support Dependencies
  spec.add_dependency "aws-sdk-s3", "~> 1.85"
  spec.add_dependency "google-cloud-storage", "~> 1.29"
  spec.add_dependency "mini_magick", "~> 4.11"
  
  # Security Dependencies
  spec.add_dependency "phcdevworks_accounts", "~> 2.5"
  
  # Development Dependencies
  spec.add_development_dependency "factory_bot_rails", "~> 6.1"
  spec.add_development_dependency "rspec-rails", "~> 4.0"
  spec.add_development_dependency "spring", "~> 2.1", ">= 2.1.1"
  spec.add_development_dependency "spring-commands-rspec", "~> 1.0"
  spec.add_development_dependency "sqlite3", "~> 1.4"

end
