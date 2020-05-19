require "application_system_test_case"

class FileMsgsTest < ApplicationSystemTestCase
  setup do
    @file_msg = file_msgs(:one)
  end

  test "visiting the index" do
    visit file_msgs_url
    assert_selector "h1", text: "File Msgs"
  end

  test "creating a File msg" do
    visit file_msgs_url
    click_on "New File Msg"

    click_on "Create File msg"

    assert_text "File msg was successfully created"
    click_on "Back"
  end

  test "updating a File msg" do
    visit file_msgs_url
    click_on "Edit", match: :first

    click_on "Update File msg"

    assert_text "File msg was successfully updated"
    click_on "Back"
  end

  test "destroying a File msg" do
    visit file_msgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "File msg was successfully destroyed"
  end
end
