require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Script::ListingsController < ApplicationController
    before_action :set_script_listing, only: [:show, :edit, :update, :destroy]

    # GET /script/listings
    def index
      @script_listings = Script::Listing.all
    end

    # GET /script/listings/1
    def show
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

      if @script_listing.save
        redirect_to @script_listing, notice: 'Listing was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /script/listings/1
    def update
      if @script_listing.update(script_listing_params)
        redirect_to @script_listing, notice: 'Listing was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /script/listings/1
    def destroy
      @script_listing.destroy
      redirect_to script_listings_url, notice: 'Listing was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_script_listing
        @script_listing = Script::Listing.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def script_listing_params
        params.require(:script_listing).permit(:listing_title, :listing_description, :listing_script_source, :listing_script_website, :listing_script_repo, :listing_script_initial_release, :listing_script_lastest_release, :listing_script_beta_release, :listing_script_lastest_release_cdn, :listing_script_status)
      end
  end
end
