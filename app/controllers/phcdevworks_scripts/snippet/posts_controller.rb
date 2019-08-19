require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Snippet::PostsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    #before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_snippet_post, only: [:show, :edit, :update, :destroy]

    # GET /snippet/posts
    def index
      @snippet_posts = Snippet::Post.all
    end

    # GET /snippet/posts/1
    def show
    end

    # GET /snippet/posts/new
    def new
      @snippet_post = Snippet::Post.new
    end

    # GET /snippet/posts/1/edit
    def edit
    end

    # POST /snippet/posts
    def create
      @snippet_post = Snippet::Post.new(snippet_post_params)
      respond_to do |format|
        if @snippet_post.save
          format.html { redirect_to snippet_posts_path, :flash => { :success => 'Script Snippet has been Added.' }}
          format.json { render :show, status: :created, location: @snippet_post }
        else
          format.html { render :new }
          format.json { render json: @snippet_post.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /snippet/posts/1
    def update
      respond_to do |format|
        if @snippet_post.update(snippet_post_params)
          format.html { redirect_to snippet_posts_path, :flash => { :notice => 'Script Snippet Name has been Updated.' }}
          format.json { render :show, status: :ok, location: @snippet_post }
        else
          format.html { render :edit }
          format.json { render json: @snippet_post.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /snippet/posts/1
    def destroy
      @snippet_post.destroy
      respond_to do |format|
        format.html { redirect_to snippet_posts_path, :flash => { :error => 'Script Snippet and Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Common Callbacks
    def set_snippet_post
      @snippet_post = Snippet::Post.find(params[:id])
    end

    # Whitelist
    def snippet_post_params
      params.require(:snippet_post).permit(:snippet_title, :snippet_code)
    end

  end
end
