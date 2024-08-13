require "test_helper"

class RacersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @racer = racers(:one)
  end

  test "should get index" do
    get racers_url
    assert_response :success
  end

  test "should get new" do
    get new_racer_url
    assert_response :success
  end

  test "should create racer" do
    assert_difference("Racer.count") do
      post racers_url, params: { racer: { race_id: @racer.race_id, sailor_id: @racer.sailor_id } }
    end

    assert_redirected_to racer_url(Racer.last)
  end

  test "should show racer" do
    get racer_url(@racer)
    assert_response :success
  end

  test "should get edit" do
    get edit_racer_url(@racer)
    assert_response :success
  end

  test "should update racer" do
    patch racer_url(@racer), params: { racer: { race_id: @racer.race_id, sailor_id: @racer.sailor_id } }
    assert_redirected_to racer_url(@racer)
  end

  test "should destroy racer" do
    assert_difference("Racer.count", -1) do
      delete racer_url(@racer)
    end

    assert_redirected_to racers_url
  end
end
