require_dependency "phcdevworks_scripts/application_controller"

module PhcdevworksScripts
  class Script::ExtensionsController < ApplicationController
    before_action :set_script_extension, only: [:show, :edit, :update, :destroy]

    # GET /script/extensions
    def index
      @script_extensions = Script::Extension.all
    end

    # GET /script/extensions/1
    def show
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

      if @script_extension.save
        redirect_to @script_extension, notice: 'Extension was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /script/extensions/1
    def update
      if @script_extension.update(script_extension_params)
        redirect_to @script_extension, notice: 'Extension was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /script/extensions/1
    def destroy
      @script_extension.destroy
      redirect_to script_extensions_url, notice: 'Extension was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_script_extension
        @script_extension = Script::Extension.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def script_extension_params
        params.require(:script_extension).permit(:script_extension_name, :script_extension_description, :script_extension)
      end
  end
end
