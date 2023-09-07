require "test_helper"

class PrayerRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prayer_request = prayer_requests(:one)
  end

  test "should get index" do
    get prayer_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_prayer_request_url
    assert_response :success
  end

  test "should create prayer_request" do
    assert_difference("PrayerRequest.count") do
      post prayer_requests_url, params: { prayer_request: { friend_id: @prayer_request.friend_id, request: @prayer_request.request } }
    end

    assert_redirected_to prayer_request_url(PrayerRequest.last)
  end

  test "should show prayer_request" do
    get prayer_request_url(@prayer_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_prayer_request_url(@prayer_request)
    assert_response :success
  end

  test "should update prayer_request" do
    patch prayer_request_url(@prayer_request), params: { prayer_request: { friend_id: @prayer_request.friend_id, request: @prayer_request.request } }
    assert_redirected_to prayer_request_url(@prayer_request)
  end

  test "should destroy prayer_request" do
    assert_difference("PrayerRequest.count", -1) do
      delete prayer_request_url(@prayer_request)
    end

    assert_redirected_to prayer_requests_url
  end
end
