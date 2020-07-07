require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Script::AuthorsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_author, only: [:show, :edit, :update, :destroy]

    # GET /script/authors
    def index
      @script_authors = Script::Author.all
    end

    # GET /script/authors/1
    def show
      @script_authors = Script::Author.friendly.find(params[:id])
      @versions = PhcdevworksScripts::AuthorVersions.where(item_id: params[:id], item_type: 'PhcdevworksScripts::Script::Author')
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
      @script_author.user_id = current_user.id
      @script_author.org_id = current_user.org_id
      respond_to do |format|
        if @script_author.save
          format.html { redirect_to script_authors_path, :flash => { :success => 'Author has been Added.' }}
          format.json { render :show, status: :created, location: @script_author }
        else
          format.html { render :new }
          format.json { render json: @script_author.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /script/authors/1
    def update
      respond_to do |format|
        if @script_author.update(script_author_params)
          format.html { redirect_to script_authors_path, :flash => { :notice => 'Author Name has been Updated.' }}
          format.json { render :show, status: :ok, location: @script_author }
        else
          format.html { render :edit }
          format.json { render json: @script_author.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /script/authors/1
    def destroy
      @script_author.destroy
      respond_to do |format|
        format.html { redirect_to script_authors_path, :flash => { :error => 'Category and Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Callback
    def set_script_author
      @script_author = Script::Author.friendly.find(params[:id])
    end

    # Whitelist
    def script_author_params
      params.require(:script_author).permit(:author_first_name, :author_last_name, :author_website, :author_github, :slug, :user_id, :org_id)
    end

  end
end
