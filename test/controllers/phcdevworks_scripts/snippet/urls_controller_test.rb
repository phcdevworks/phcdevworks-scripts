require 'test_helper'

module PhcdevworksScripts
  class Snippet::UrlsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @snippet_url = phcdevworks_scripts_snippet_urls(:one)
    end

    test "should get index" do
      get snippet_urls_url
      assert_response :success
    end

    test "should get new" do
      get new_snippet_url_url
      assert_response :success
    end

    test "should create snippet_url" do
      assert_difference('Snippet::Url.count') do
        post snippet_urls_url, params: { snippet_url: {  } }
      end

      assert_redirected_to snippet_url_url(Snippet::Url.last)
    end

    test "should show snippet_url" do
      get snippet_url_url(@snippet_url)
      assert_response :success
    end

    test "should get edit" do
      get edit_snippet_url_url(@snippet_url)
      assert_response :success
    end

    test "should update snippet_url" do
      patch snippet_url_url(@snippet_url), params: { snippet_url: {  } }
      assert_redirected_to snippet_url_url(@snippet_url)
    end

    test "should destroy snippet_url" do
      assert_difference('Snippet::Url.count', -1) do
        delete snippet_url_url(@snippet_url)
      end

      assert_redirected_to snippet_urls_url
    end
  end
end
