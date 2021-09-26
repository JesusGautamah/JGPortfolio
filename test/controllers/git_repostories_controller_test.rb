require 'test_helper'

class GitRepostoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @git_repostory = git_repostories(:one)
  end

  test "should get index" do
    get git_repostories_url
    assert_response :success
  end

  test "should get new" do
    get new_git_repostory_url
    assert_response :success
  end

  test "should create git_repostory" do
    assert_difference('GitRepostory.count') do
      post git_repostories_url, params: { git_repostory: { link: @git_repostory.link, project_id: @git_repostory.project_id, title: @git_repostory.title } }
    end

    assert_redirected_to git_repostory_url(GitRepostory.last)
  end

  test "should show git_repostory" do
    get git_repostory_url(@git_repostory)
    assert_response :success
  end

  test "should get edit" do
    get edit_git_repostory_url(@git_repostory)
    assert_response :success
  end

  test "should update git_repostory" do
    patch git_repostory_url(@git_repostory), params: { git_repostory: { link: @git_repostory.link, project_id: @git_repostory.project_id, title: @git_repostory.title } }
    assert_redirected_to git_repostory_url(@git_repostory)
  end

  test "should destroy git_repostory" do
    assert_difference('GitRepostory.count', -1) do
      delete git_repostory_url(@git_repostory)
    end

    assert_redirected_to git_repostories_url
  end
end
