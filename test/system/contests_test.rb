require "application_system_test_case"

class ContestsTest < ApplicationSystemTestCase
  setup do
    @contest = contests(:one)
  end

  test "visiting the index" do
    visit contests_url
    assert_selector "h1", text: "Contests"
  end

  test "should create contest" do
    visit contests_url
    click_on "New contest"

    fill_in "Name", with: @contest.name
    fill_in "Year", with: @contest.year
    click_on "Create Contest"

    assert_text "Contest was successfully created"
    click_on "Back"
  end

  test "should update Contest" do
    visit contest_url(@contest)
    click_on "Edit this contest", match: :first

    fill_in "Name", with: @contest.name
    fill_in "Year", with: @contest.year
    click_on "Update Contest"

    assert_text "Contest was successfully updated"
    click_on "Back"
  end

  test "should destroy Contest" do
    visit contest_url(@contest)
    accept_confirm { click_on "Destroy this contest", match: :first }

    assert_text "Contest was successfully destroyed"
  end
end
