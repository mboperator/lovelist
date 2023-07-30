require "test_helper"

class FriendInteractionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend_interaction = friend_interactions(:one)
  end

  test "should get index" do
    get friend_interactions_url
    assert_response :success
  end

  test "should get new" do
    get new_friend_interaction_url
    assert_response :success
  end

  test "should create friend_interaction" do
    assert_difference("FriendInteraction.count") do
      post friend_interactions_url, params: { friend_interaction: { friend_id: @friend_interaction.friend_id, interaction_id: @friend_interaction.interaction_id } }
    end

    assert_redirected_to friend_interaction_url(FriendInteraction.last)
  end

  test "should show friend_interaction" do
    get friend_interaction_url(@friend_interaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_friend_interaction_url(@friend_interaction)
    assert_response :success
  end

  test "should update friend_interaction" do
    patch friend_interaction_url(@friend_interaction), params: { friend_interaction: { friend_id: @friend_interaction.friend_id, interaction_id: @friend_interaction.interaction_id } }
    assert_redirected_to friend_interaction_url(@friend_interaction)
  end

  test "should destroy friend_interaction" do
    assert_difference("FriendInteraction.count", -1) do
      delete friend_interaction_url(@friend_interaction)
    end

    assert_redirected_to friend_interactions_url
  end
end
