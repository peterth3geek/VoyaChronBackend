require 'test_helper'

class CharacterCampaignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_campaign = character_campaigns(:one)
  end

  test "should get index" do
    get character_campaigns_url, as: :json
    assert_response :success
  end

  test "should create character_campaign" do
    assert_difference('CharacterCampaign.count') do
      post character_campaigns_url, params: { character_campaign: { character_id: @character_campaign.character_id } }, as: :json
    end

    assert_response 201
  end

  test "should show character_campaign" do
    get character_campaign_url(@character_campaign), as: :json
    assert_response :success
  end

  test "should update character_campaign" do
    patch character_campaign_url(@character_campaign), params: { character_campaign: { character_id: @character_campaign.character_id } }, as: :json
    assert_response 200
  end

  test "should destroy character_campaign" do
    assert_difference('CharacterCampaign.count', -1) do
      delete character_campaign_url(@character_campaign), as: :json
    end

    assert_response 204
  end
end
