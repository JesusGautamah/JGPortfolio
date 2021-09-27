require 'test_helper'

class GitRepositoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @git_repository = git_repositories(:one)
  end

  test "should get index" do
    get git_repositories_url
    assert_response :success
  end

  test "should get new" do
    get new_git_repository_url
    assert_response :success
  end

  test "should create git_repository" do
    assert_difference('GitRepository.count') do
      post git_repositories_url, params: { git_repository: { link: @git_repository.link, project_id: @git_repository.project_id, title: @git_repository.title } }
    end

    assert_redirected_to git_repository_url(GitRepository.last)
  end

  test "should show git_repository" do
    get git_repository_url(@git_repository)
    assert_response :success
  end

  test "should get edit" do
    get edit_git_repository_url(@git_repository)
    assert_response :success
  end

  test "should update git_repository" do
    patch git_repository_url(@git_repository), params: { git_repository: { link: @git_repository.link, project_id: @git_repository.project_id, title: @git_repository.title } }
    assert_redirected_to git_repository_url(@git_repository)
  end

  test "should destroy git_repository" do
    assert_difference('GitRepository.count', -1) do
      delete git_repository_url(@git_repository)
    end

    assert_redirected_to git_repositories_url
  end
end
