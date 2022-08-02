require "application_system_test_case"

class ComicsSearchesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url

    assert_selector ".comic_card", count: 20
  end

  test "displays the right number of results" do
    login_as users(:gustavo)
    visit root_url

    fill_in "search", with: "ultimate"

    assert_selector ".comic_card", count: 4
  end
end
