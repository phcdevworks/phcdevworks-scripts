require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Script::AuthorsController < ApplicationController
    before_action :set_script_author, only: [:show, :edit, :update, :destroy]

    # GET /script/authors
    def index
      @script_authors = Script::Author.all
    end

    # GET /script/authors/1
    def show
    end

    # GET /script/authors/new
    def new
      @script_author = Script::Author.new
    end

    # GET /script/authors/1/edit
    def edit
    end

    # POST /script/authors
    def create
      @script_author = Script::Author.new(script_author_params)

      if @script_author.save
        redirect_to @script_author, notice: 'Author was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /script/authors/1
    def update
      if @script_author.update(script_author_params)
        redirect_to @script_author, notice: 'Author was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /script/authors/1
    def destroy
      @script_author.destroy
      redirect_to script_authors_url, notice: 'Author was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_script_author
        @script_author = Script::Author.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def script_author_params
        params.require(:script_author).permit(:author_first_name, :author_last_name, :author_website, :author_github)
      end
  end
end
