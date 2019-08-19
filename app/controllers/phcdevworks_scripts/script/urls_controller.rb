require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Script::UrlsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    #before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_url, only: [:show, :edit, :update, :destroy]

    # GET /script/urls
    def index
      @script_urls = Script::Url.all
    end

    # GET /script/urls/1
    def show
      script_listing = Script::Listing.find(params[:listing_id])
      @script_url = script_listing.urls.friendly.find(params[:id])
    end

    # GET /script/urls/new
    def new
      @script_url = Script::Url.new
    end

    # GET /script/urls/1/edit
    def edit
    end

    # POST /script/urls
    def create
      @script_url = Script::Url.new(script_url_params)
      respond_to do |format|
        if @script_url.save
          format.html { redirect_to script_listing_urls_path, :flash => { :success => 'Script CDN URLs has been Added.' }}
          format.json { render :show, status: :created, location: @script_url }
        else
          format.html { render :new }
          format.json { render json: @script_url.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /script/urls/1
    def update
      respond_to do |format|
        if @script_url.update(script_url_params)
          format.html { redirect_to script_listing_urls_path, :flash => { :notice => 'Script CDN URLs Name has been Updated.' }}
          format.json { render :show, status: :ok, location: @script_url }
        else
          format.html { render :edit }
          format.json { render json: @script_url.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /script/urls/1
    def destroy
      @script_url.destroy
      respond_to do |format|
        format.html { redirect_to script_listing_urls_path, :flash => { :error => 'Script CDN URLs and Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Callback
    def set_script_url
      @script_url = Script::Url.find(params[:id])
    end

    # Whitelist
    def script_url_params
      params.require(:script_url).permit(:script_cdn_url, :script_cdn_url_release, :script_cdn_url_cdn_update)
    end

  end
end
