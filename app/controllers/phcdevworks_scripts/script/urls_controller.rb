require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Script::UrlsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_url, only: [:show, :edit, :update, :destroy]

    # INDEX
    def index
      @script_urls = script_listing.urls
    end

    # SHOW
    def show
      @script_url = script_listing.urls.find(params[:id])
    end

    # NEW
    def new
      @script_url = script_listing.urls.build
    end

    # EDIT
    def edit
      @script_url = script_listing.urls.find(params[:id])
    end

    # CREATE
    def create
      @script_url = script_listing.urls.create(script_url_params)
      @script_url.user_id = current_user.id
      @script_url.org_id = current_user.org_id
      if @script_url.save
        redirect_to script_listing_urls_path, :flash => { :success => 'Author was successfully created.' }
      else
        render :new
      end
    end

    # UPDATE
    def update
      @script_listing = Script::Listing.friendly.find(params[:listing_id])
      if @script_url.update(script_url_params)
        redirect_to script_listing_urls_path, :flash => { :success => 'Author was successfully updated.' }
      else
        render :edit
      end
    end

    # DELETE
    def destroy
      @script_url = script_listing.urls.find(params[:id])
      @script_url.destroy
      redirect_to script_listing_urls_path, :flash => { :error => 'Author was successfully destroyed.' }
    end

    private

    # Callback
    def set_script_url
      @script_url = Script::Url.find(params[:id])
    end

    def script_listing
      @script_listing = Script::Listing.friendly.find(params[:listing_id])
    end

    # Whitelist
    def script_url_params
      params.require(:script_url).permit(:script_cdn_url, :script_cdn_url_release, :script_cdn_url_cdn_update, :version_id, :extension_id)
    end

  end
end
