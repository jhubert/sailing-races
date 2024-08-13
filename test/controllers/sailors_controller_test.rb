require "test_helper"

class SailorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sailor = sailors(:one)
  end

  test "should get index" do
    get sailors_url
    assert_response :success
  end

  test "should get new" do
    get new_sailor_url
    assert_response :success
  end

  test "should create sailor" do
    assert_difference("Sailor.count") do
      post sailors_url, params: { sailor: { hometown: @sailor.hometown, name: @sailor.name, sail_number: @sailor.sail_number } }
    end

    assert_redirected_to sailor_url(Sailor.last)
  end

  test "should show sailor" do
    get sailor_url(@sailor)
    assert_response :success
  end

  test "should get edit" do
    get edit_sailor_url(@sailor)
    assert_response :success
  end

  test "should update sailor" do
    patch sailor_url(@sailor), params: { sailor: { hometown: @sailor.hometown, name: @sailor.name, sail_number: @sailor.sail_number } }
    assert_redirected_to sailor_url(@sailor)
  end

  test "should destroy sailor" do
    assert_difference("Sailor.count", -1) do
      delete sailor_url(@sailor)
    end

    assert_redirected_to sailors_url
  end
end
