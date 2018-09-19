require 'test_helper'

class CharacterItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_item = character_items(:one)
  end

  test "should get index" do
    get character_items_url, as: :json
    assert_response :success
  end

  test "should create character_item" do
    assert_difference('CharacterItem.count') do
      post character_items_url, params: { character_item: { character_id: @character_item.character_id, item_id: @character_item.item_id } }, as: :json
    end

    assert_response 201
  end

  test "should show character_item" do
    get character_item_url(@character_item), as: :json
    assert_response :success
  end

  test "should update character_item" do
    patch character_item_url(@character_item), params: { character_item: { character_id: @character_item.character_id, item_id: @character_item.item_id } }, as: :json
    assert_response 200
  end

  test "should destroy character_item" do
    assert_difference('CharacterItem.count', -1) do
      delete character_item_url(@character_item), as: :json
    end

    assert_response 204
  end
end
