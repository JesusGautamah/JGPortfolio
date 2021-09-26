require "application_system_test_case"

class GitRepostoriesTest < ApplicationSystemTestCase
  setup do
    @git_repostory = git_repostories(:one)
  end

  test "visiting the index" do
    visit git_repostories_url
    assert_selector "h1", text: "Git Repostories"
  end

  test "creating a Git repostory" do
    visit git_repostories_url
    click_on "New Git Repostory"

    fill_in "Link", with: @git_repostory.link
    fill_in "Project", with: @git_repostory.project_id
    fill_in "Title", with: @git_repostory.title
    click_on "Create Git repostory"

    assert_text "Git repostory was successfully created"
    click_on "Back"
  end

  test "updating a Git repostory" do
    visit git_repostories_url
    click_on "Edit", match: :first

    fill_in "Link", with: @git_repostory.link
    fill_in "Project", with: @git_repostory.project_id
    fill_in "Title", with: @git_repostory.title
    click_on "Update Git repostory"

    assert_text "Git repostory was successfully updated"
    click_on "Back"
  end

  test "destroying a Git repostory" do
    visit git_repostories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Git repostory was successfully destroyed"
  end
end
