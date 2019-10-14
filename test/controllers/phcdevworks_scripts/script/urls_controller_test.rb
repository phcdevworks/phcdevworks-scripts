require 'test_helper'

module PhcdevworksScripts
  class Script::UrlsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @script_url = phcdevworks_scripts_script_urls(:one)
    end

    test "should get index" do
      get script_urls_url
      assert_response :success
    end

    test "should get new" do
      get new_script_url_url
      assert_response :success
    end

    test "should create script_url" do
      assert_difference('Script::Url.count') do
        post script_urls_url, params: { script_url: {  } }
      end

      assert_redirected_to script_url_url(Script::Url.last)
    end

    test "should show script_url" do
      get script_url_url(@script_url)
      assert_response :success
    end

    test "should get edit" do
      get edit_script_url_url(@script_url)
      assert_response :success
    end

    test "should update script_url" do
      patch script_url_url(@script_url), params: { script_url: {  } }
      assert_redirected_to script_url_url(@script_url)
    end

    test "should destroy script_url" do
      assert_difference('Script::Url.count', -1) do
        delete script_url_url(@script_url)
      end

      assert_redirected_to script_urls_url
    end
  end
end
