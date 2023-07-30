require "application_system_test_case"

class FriendInteractionsTest < ApplicationSystemTestCase
  setup do
    @friend_interaction = friend_interactions(:one)
  end

  test "visiting the index" do
    visit friend_interactions_url
    assert_selector "h1", text: "Friend interactions"
  end

  test "should create friend interaction" do
    visit friend_interactions_url
    click_on "New friend interaction"

    fill_in "Friend", with: @friend_interaction.friend_id
    fill_in "Interaction", with: @friend_interaction.interaction_id
    click_on "Create Friend interaction"

    assert_text "Friend interaction was successfully created"
    click_on "Back"
  end

  test "should update Friend interaction" do
    visit friend_interaction_url(@friend_interaction)
    click_on "Edit this friend interaction", match: :first

    fill_in "Friend", with: @friend_interaction.friend_id
    fill_in "Interaction", with: @friend_interaction.interaction_id
    click_on "Update Friend interaction"

    assert_text "Friend interaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Friend interaction" do
    visit friend_interaction_url(@friend_interaction)
    click_on "Destroy this friend interaction", match: :first

    assert_text "Friend interaction was successfully destroyed"
  end
end
