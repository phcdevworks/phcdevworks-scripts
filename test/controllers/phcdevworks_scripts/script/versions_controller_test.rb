require 'test_helper'

module PhcdevworksScripts
  class Script::VersionsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @script_version = phcdevworks_scripts_script_versions(:one)
    end

    test "should get index" do
      get script_versions_url
      assert_response :success
    end

    test "should get new" do
      get new_script_version_url
      assert_response :success
    end

    test "should create script_version" do
      assert_difference('Script::Version.count') do
        post script_versions_url, params: { script_version: {  } }
      end

      assert_redirected_to script_version_url(Script::Version.last)
    end

    test "should show script_version" do
      get script_version_url(@script_version)
      assert_response :success
    end

    test "should get edit" do
      get edit_script_version_url(@script_version)
      assert_response :success
    end

    test "should update script_version" do
      patch script_version_url(@script_version), params: { script_version: {  } }
      assert_redirected_to script_version_url(@script_version)
    end

    test "should destroy script_version" do
      assert_difference('Script::Version.count', -1) do
        delete script_version_url(@script_version)
      end

      assert_redirected_to script_versions_url
    end
  end
end
