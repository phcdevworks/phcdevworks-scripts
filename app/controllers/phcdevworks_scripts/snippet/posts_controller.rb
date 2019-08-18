require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Snippet::PostsController < ApplicationController
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

      if @snippet_post.save
        redirect_to @snippet_post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /snippet/posts/1
    def update
      if @snippet_post.update(snippet_post_params)
        redirect_to @snippet_post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /snippet/posts/1
    def destroy
      @snippet_post.destroy
      redirect_to snippet_posts_url, notice: 'Post was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_snippet_post
        @snippet_post = Snippet::Post.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def snippet_post_params
        params.require(:snippet_post).permit(:snippet_title, :snippet_code)
      end
  end
end
