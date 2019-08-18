require 'test_helper'

module PhcdevworksScripts
  class Script::ExtensionsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @script_extension = phcdevworks_scripts_script_extensions(:one)
    end

    test "should get index" do
      get script_extensions_url
      assert_response :success
    end

    test "should get new" do
      get new_script_extension_url
      assert_response :success
    end

    test "should create script_extension" do
      assert_difference('Script::Extension.count') do
        post script_extensions_url, params: { script_extension: { script_extension: @script_extension.script_extension, script_extension_description: @script_extension.script_extension_description, script_extension_name: @script_extension.script_extension_name } }
      end

      assert_redirected_to script_extension_url(Script::Extension.last)
    end

    test "should show script_extension" do
      get script_extension_url(@script_extension)
      assert_response :success
    end

    test "should get edit" do
      get edit_script_extension_url(@script_extension)
      assert_response :success
    end

    test "should update script_extension" do
      patch script_extension_url(@script_extension), params: { script_extension: { script_extension: @script_extension.script_extension, script_extension_description: @script_extension.script_extension_description, script_extension_name: @script_extension.script_extension_name } }
      assert_redirected_to script_extension_url(@script_extension)
    end

    test "should destroy script_extension" do
      assert_difference('Script::Extension.count', -1) do
        delete script_extension_url(@script_extension)
      end

      assert_redirected_to script_extensions_url
    end
  end
end
