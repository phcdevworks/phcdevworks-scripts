require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Script::ExtensionsController < ApplicationController

    # Filters & Security
    #include PhcdevworksCore::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_extension, only: [:show, :edit, :update, :destroy]

    # GET /script/extensions
    def index
      @script_extensions = Script::Extension.all
    end

    # GET /script/extensions/1
    def show
      @script_extensions = Script::Extension.friendly.find(params[:id])
      @versions = PhcdevworksScripts::ExtensionVersions.where(item_id: params[:id], item_type: 'PhcdevworksScripts::Script::Extension')
    end

    # GET /script/extensions/new
    def new
      @script_extension = Script::Extension.new
    end

    # GET /script/extensions/1/edit
    def edit
    end

    # POST /script/extensions
    def create
      @script_extension = Script::Extension.new(script_extension_params)
      @script_extension.user_id = current_user.id
      @script_extension.org_id = current_user.org_id
      respond_to do |format|
        if @script_extension.save
          format.html { redirect_to script_extensions_path, :flash => { :success => 'Script Extension has been Added.' }}
          format.json { render :show, status: :created, location: @script_extension }
        else
          format.html { render :new }
          format.json { render json: @script_extension.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /script/extensions/1
    def update
      respond_to do |format|
        if @script_extension.update(script_extension_params)
          format.html { redirect_to script_extensions_path, :flash => { :notice => 'Script Extension Name has been Updated.' }}
          format.json { render :show, status: :ok, location: @script_extension }
        else
          format.html { render :edit }
          format.json { render json: @script_extension.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /script/extensions/1
    def destroy
      @script_extension.destroy
      respond_to do |format|
        format.html { redirect_to script_extensions_path, :flash => { :error => 'Script Extension and Connections have all been Removed.' }}
        format.json { head :no_content }
      end
    end

    private

    # Callback
    def set_script_extension
      @script_extension = Script::Extension.friendly.find(params[:id])
    end

    # Whitelist
    def script_extension_params
      params.require(:script_extension).permit(:script_extension_name, :script_extension_description, :script_extension)
    end

  end
end
