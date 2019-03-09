require "application_system_test_case"

class MenstrualCyclesTest < ApplicationSystemTestCase
  setup do
    @menstrual_cycle = menstrual_cycles(:one)
  end

  test "visiting the index" do
    visit menstrual_cycles_url
    assert_selector "h1", text: "Menstrual Cycles"
  end

  test "creating a Menstrual cycle" do
    visit menstrual_cycles_url
    click_on "New Menstrual Cycle"

    fill_in "Ending date", with: @menstrual_cycle.ending_date
    fill_in "Starting date", with: @menstrual_cycle.starting_date
    fill_in "User", with: @menstrual_cycle.user_id
    click_on "Create Menstrual cycle"

    assert_text "Menstrual cycle was successfully created"
    click_on "Back"
  end

  test "updating a Menstrual cycle" do
    visit menstrual_cycles_url
    click_on "Edit", match: :first

    fill_in "Ending date", with: @menstrual_cycle.ending_date
    fill_in "Starting date", with: @menstrual_cycle.starting_date
    fill_in "User", with: @menstrual_cycle.user_id
    click_on "Update Menstrual cycle"

    assert_text "Menstrual cycle was successfully updated"
    click_on "Back"
  end

  test "destroying a Menstrual cycle" do
    visit menstrual_cycles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menstrual cycle was successfully destroyed"
  end
end
