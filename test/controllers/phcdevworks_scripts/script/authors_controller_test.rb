require 'test_helper'

module PhcdevworksScripts
  class Script::AuthorsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @script_author = phcdevworks_scripts_script_authors(:one)
    end

    test "should get index" do
      get script_authors_url
      assert_response :success
    end

    test "should get new" do
      get new_script_author_url
      assert_response :success
    end

    test "should create script_author" do
      assert_difference('Script::Author.count') do
        post script_authors_url, params: { script_author: { author_first_name: @script_author.author_first_name, author_github: @script_author.author_github, author_last_name: @script_author.author_last_name, author_website: @script_author.author_website } }
      end

      assert_redirected_to script_author_url(Script::Author.last)
    end

    test "should show script_author" do
      get script_author_url(@script_author)
      assert_response :success
    end

    test "should get edit" do
      get edit_script_author_url(@script_author)
      assert_response :success
    end

    test "should update script_author" do
      patch script_author_url(@script_author), params: { script_author: { author_first_name: @script_author.author_first_name, author_github: @script_author.author_github, author_last_name: @script_author.author_last_name, author_website: @script_author.author_website } }
      assert_redirected_to script_author_url(@script_author)
    end

    test "should destroy script_author" do
      assert_difference('Script::Author.count', -1) do
        delete script_author_url(@script_author)
      end

      assert_redirected_to script_authors_url
    end
  end
end
