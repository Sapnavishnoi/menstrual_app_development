require 'test_helper'

class MenstrualCyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menstrual_cycle = menstrual_cycles(:one)
  end

  test "should get index" do
    get menstrual_cycles_url
    assert_response :success
  end

  test "should get new" do
    get new_menstrual_cycle_url
    assert_response :success
  end

  test "should create menstrual_cycle" do
    assert_difference('MenstrualCycle.count') do
      post menstrual_cycles_url, params: { menstrual_cycle: { ending_date: @menstrual_cycle.ending_date, starting_date: @menstrual_cycle.starting_date, user_id: @menstrual_cycle.user_id } }
    end

    assert_redirected_to menstrual_cycle_url(MenstrualCycle.last)
  end

  test "should show menstrual_cycle" do
    get menstrual_cycle_url(@menstrual_cycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_menstrual_cycle_url(@menstrual_cycle)
    assert_response :success
  end

  test "should update menstrual_cycle" do
    patch menstrual_cycle_url(@menstrual_cycle), params: { menstrual_cycle: { ending_date: @menstrual_cycle.ending_date, starting_date: @menstrual_cycle.starting_date, user_id: @menstrual_cycle.user_id } }
    assert_redirected_to menstrual_cycle_url(@menstrual_cycle)
  end

  test "should destroy menstrual_cycle" do
    assert_difference('MenstrualCycle.count', -1) do
      delete menstrual_cycle_url(@menstrual_cycle)
    end

    assert_redirected_to menstrual_cycles_url
  end
end
