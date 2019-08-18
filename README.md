### PHCDevworks Scripts Documentation  

PHCDevworks Scripts rails script management engine for website script listings.  

- Manage script CDN listings for websites.
- Main script title and description.
- Script versions and script CDN URLs.
- Store script snippets and URLs.

#### Step 1 - Add PHCDevworks Scripts to your gemfile  and run command  

	gem 'phcscriptcdnpro'
	bundle install

#### Step 2 - Copy PHCDevworks Scripts Database Tables
To copy PHCScriptCDN's required database migrations, copy each command individually to your terminal's command line.

	rails phcdevworks_scripts:install:migrations
	rails db:migrate

#### Step 3 - Mount PHCDevworks Scripts & Add Routes
Mount PHCMembers by adding code below to your routes file.  

	mount Phcscriptcdnpro::Engine, :at => '/'

#### Step 4 - Recompile Assets  
To properly function re-compile your application's assets to copy over required files.

	rails assets:clobber
	rails assets:precompile  

#### Step 5 - Generate Contact Form View (Customization)  
All PHCDevworks Scripts views and layouts can be overwritten by copying files to your application.

	rails generate phcdevworks_scripts:views
