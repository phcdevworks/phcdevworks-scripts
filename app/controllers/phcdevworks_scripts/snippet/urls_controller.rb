require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Snippet::UrlsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    #before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_snippet_url, only: [:show, :edit, :update, :destroy]

    # GET /snippet/urls
    def index
      @snippet_urls = Snippet::Url.all
    end

    # GET /snippet/urls/1
    def show
    end

    # GET /snippet/urls/new
    def new
    @snippet_url = Snippet::Url.new
    end

    # GET /snippet/urls/1/edit
    def edit
    end

    # POST /snippet/urls
    def create
      @snippet_url = Snippet::Url.new(snippet_url_params)
      respond_to do |format|
        if @snippet_url.save
          format.html { redirect_to snippet_urls_path, :flash => { :success => 'Script Snippet CDN URL has been Added.' }}
          format.json { render :show, status: :created, location: @snippet_url }
        else
          format.html { render :new }
          format.json { render json: @snippet_url.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /snippet/urls/1
    def update
      respond_to do |format|
        if @snippet_url.update(snippet_url_params)
          format.html { redirect_to snippet_urls_path, :flash => { :notice => 'Script Snippet CDN URL Name has been Updated.' }}
          format.json { render :show, status: :ok, location: @snippet_url }
        else
          format.html { render :edit }
          format.json { render json: @snippet_url.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /snippet/urls/1
    def destroy
      @snippet_url.destroy
      respond_to do |format|
        format.html { redirect_to snippet_urls_path, :flash => { :error => 'Script Snippet CDN URL and Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_snippet_url
      @snippet_url = Snippet::Url.find(params[:id])
    end

    # Whitelist
    def snippet_url_params
      params.require(:snippet_url).permit(:snippet_url)
    end

  end
end
