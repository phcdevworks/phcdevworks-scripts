require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Script::VersionsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_version, only: [:show, :edit, :update, :destroy]

    # GET /script/versions
    def index
      @script_versions = Script::Version.all
    end

    # GET /script/versions/1
    def show
      @script_versions = Script::Version.friendly.find(params[:id])
      @versions = PhcdevworksScripts::ScriptversionVersions.where(item_id: params[:id], item_type: 'PhcdevworksScripts::Script::Version')
    end

    # GET /script/versions/new
    def new
      @script_version = Script::Version.new
    end

    # GET /script/versions/1/edit
    def edit
    end

    # POST /script/versions
    def create
      @script_version = Script::Version.new(script_version_params)
      @script_version.user_id = current_user.id
      @script_version.org_id = current_user.org_id
      respond_to do |format|
        if @script_version.save
          format.html { redirect_to script_versions_path, :flash => { :success => 'Script Version has been Added.' }}
          format.json { render :show, status: :created, location: @script_version }
        else
          format.html { render :new }
          format.json { render json: @script_version.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /script/versions/1
    def update
      respond_to do |format|
        if @script_version.update(script_version_params)
          format.html { redirect_to script_versions_path, :flash => { :notice => 'Script Version Name has been Updated.' }}
          format.json { render :show, status: :ok, location: @script_version }
        else
          format.html { render :edit }
          format.json { render json: @script_version.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /script/versions/1
    def destroy
      @script_version.destroy
      respond_to do |format|
        format.html { redirect_to script_versions_path, :flash => { :error => 'Script Version and Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Callback
    def set_script_version
      @script_version = Script::Version.find(params[:id])
    end

    # Whitelist
    def script_version_params
      params.require(:script_version).permit(:version_number)
    end

  end
end
