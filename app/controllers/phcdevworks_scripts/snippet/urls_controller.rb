require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Snippet::UrlsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    #before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_snippet_url, only: [:show, :edit, :update, :destroy]

    # INDEX
    def index
      @script_urls = snippet_post.urls.all
    end

    # SHOW
    def show
      @script_url = snippet_post.urls.find(params[:id])
    end

    # NEW
    def new
      @script_url = snippet_post.urls.build
    end

    # EDIT
    def edit
    end

    # CREATE
    def create
      @script_url = snippet_post.urls.create(script_url_params)
      @script_url.user_id = current_user.id
      @script_url.org_id = current_user.org_id
      if @script_url.save
        redirect_to script_snippet_urls_path, :flash => { :success => 'Script url was successfully created.' }
      else
        render :new
      end
    end

    # UPDATE
    def update
      @script_snippet = Snippet::Url.find(params[:snippet_id])
      if @script_url.update(script_url_params)
        redirect_to script_snippet_urls_path, :flash => { :success => 'Script url was successfully updated.' }
      else
        render :edit
      end
    end

    # DELETE
    def destroy
      @script_url = snippet_post.urls.find(params[:id])
      @script_url.destroy
      redirect_to script_snippet_urls_path, :flash => { :error => 'Script url was successfully destroyed.' }
    end

    private

    # Common Callbacks
    def set_snippet_url
      @snippet_url = Snippet::Url.find(params[:id])
    end

    def snippet_post
      @snippet_post = Snippet::Post.friendly.find(params[:post_id])
    end

    # Whitelist
    def snippet_url_params
      params.require(:snippet_url).permit(:snippet_url)
    end

  end
end
