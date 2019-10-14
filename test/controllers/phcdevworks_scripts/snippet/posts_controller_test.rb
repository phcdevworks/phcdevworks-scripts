require 'test_helper'

module PhcdevworksScripts
  class Snippet::PostsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @snippet_post = phcdevworks_scripts_snippet_posts(:one)
    end

    test "should get index" do
      get snippet_posts_url
      assert_response :success
    end

    test "should get new" do
      get new_snippet_post_url
      assert_response :success
    end

    test "should create snippet_post" do
      assert_difference('Snippet::Post.count') do
        post snippet_posts_url, params: { snippet_post: {  } }
      end

      assert_redirected_to snippet_post_url(Snippet::Post.last)
    end

    test "should show snippet_post" do
      get snippet_post_url(@snippet_post)
      assert_response :success
    end

    test "should get edit" do
      get edit_snippet_post_url(@snippet_post)
      assert_response :success
    end

    test "should update snippet_post" do
      patch snippet_post_url(@snippet_post), params: { snippet_post: {  } }
      assert_redirected_to snippet_post_url(@snippet_post)
    end

    test "should destroy snippet_post" do
      assert_difference('Snippet::Post.count', -1) do
        delete snippet_post_url(@snippet_post)
      end

      assert_redirected_to snippet_posts_url
    end
  end
end
