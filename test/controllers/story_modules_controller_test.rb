require 'test_helper'

class StoryModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story_module = story_modules(:one)
  end

  test "should get index" do
    get story_modules_url, as: :json
    assert_response :success
  end

  test "should create story_module" do
    assert_difference('StoryModule.count') do
      post story_modules_url, params: { story_module: { chapter_id: @story_module.chapter_id, description: @story_module.description, location_id: @story_module.location_id, title: @story_module.title } }, as: :json
    end

    assert_response 201
  end

  test "should show story_module" do
    get story_module_url(@story_module), as: :json
    assert_response :success
  end

  test "should update story_module" do
    patch story_module_url(@story_module), params: { story_module: { chapter_id: @story_module.chapter_id, description: @story_module.description, location_id: @story_module.location_id, title: @story_module.title } }, as: :json
    assert_response 200
  end

  test "should destroy story_module" do
    assert_difference('StoryModule.count', -1) do
      delete story_module_url(@story_module), as: :json
    end

    assert_response 204
  end
end
