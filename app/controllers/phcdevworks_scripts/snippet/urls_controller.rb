require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Snippet::UrlsController < ApplicationController
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

      if @snippet_url.save
        redirect_to @snippet_url, notice: 'Url was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /snippet/urls/1
    def update
      if @snippet_url.update(snippet_url_params)
        redirect_to @snippet_url, notice: 'Url was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /snippet/urls/1
    def destroy
      @snippet_url.destroy
      redirect_to snippet_urls_url, notice: 'Url was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_snippet_url
        @snippet_url = Snippet::Url.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def snippet_url_params
        params.require(:snippet_url).permit(:snippet_url)
      end
  end
end
