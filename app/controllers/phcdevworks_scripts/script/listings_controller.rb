require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Script::ListingsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_listing, only: [:show, :edit, :update, :destroy]

    # GET /script/listings
    def index
      @script_listings = Script::Listing.all
    end

    # GET /script/listings/1
    def show
      @script_listings = Script::Listing.friendly.find(params[:id])
      @versions = PhcdevworksScripts::ListingVersions.where(item_id: params[:id], item_type: 'PhcdevworksScripts::Script_::Listing')
    end

    # GET /script/listings/new
    def new
      @script_listing = Script::Listing.new
    end

    # GET /script/listings/1/edit
    def edit
    end

    # POST /script/listings
    def create
      @script_listing = Script::Listing.new(script_listing_params)
      @script_listing.user_id = current_user.id
      @script_listing.org_id = current_user.org_id
      respond_to do |format|
        if @script_listing.save
          format.html { redirect_to script_listings_path, :flash => { :success => 'Script Listing has been Added.' }}
          format.json { render :show, status: :created, location: @script_listing }
        else
          format.html { render :new }
          format.json { render json: @script_listing.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /script/listings/1
    def update
      respond_to do |format|
        if @script_listing.update(script_listing_params)
          format.html { redirect_to script_listings_path, :flash => { :notice => 'Script Listing has been Updated.' }}
          format.json { render :show, status: :ok, location: @script_listing }
        else
          format.html { render :edit }
          format.json { render json: @script_listing.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /script/listings/1
    def destroy
      @script_listing.destroy
      respond_to do |format|
        format.html { redirect_to script_listings_path, :flash => { :error => 'Script Listing and Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Callback
    def set_script_listing
      @script_listing = Script::Listing.friendly.find(params[:id])
    end

    # Whitelist
    def script_listing_params
      params.require(:script_listing).permit(:listing_title, :listing_description, :listing_script_source, :listing_script_website, :listing_script_repo, :listing_script_initial_release, :listing_script_lastest_release, :listing_script_beta_release, :listing_script_lastest_release_cdn, :listing_script_status, :author_id)
    end

  end
end
