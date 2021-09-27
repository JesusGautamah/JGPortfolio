require "application_system_test_case"

class GitRepositoriesTest < ApplicationSystemTestCase
  setup do
    @git_repository = git_repositories(:one)
  end

  test "visiting the index" do
    visit git_repositories_url
    assert_selector "h1", text: "Git Repositories"
  end

  test "creating a Git repository" do
    visit git_repositories_url
    click_on "New Git Repository"

    fill_in "Link", with: @git_repository.link
    fill_in "Project", with: @git_repository.project_id
    fill_in "Title", with: @git_repository.title
    click_on "Create Git repository"

    assert_text "Git repository was successfully created"
    click_on "Back"
  end

  test "updating a Git repository" do
    visit git_repositories_url
    click_on "Edit", match: :first

    fill_in "Link", with: @git_repository.link
    fill_in "Project", with: @git_repository.project_id
    fill_in "Title", with: @git_repository.title
    click_on "Update Git repository"

    assert_text "Git repository was successfully updated"
    click_on "Back"
  end

  test "destroying a Git repository" do
    visit git_repositories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Git repository was successfully destroyed"
  end
end
