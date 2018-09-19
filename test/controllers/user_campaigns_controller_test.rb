require 'test_helper'

class UserCampaignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_campaign = user_campaigns(:one)
  end

  test "should get index" do
    get user_campaigns_url, as: :json
    assert_response :success
  end

  test "should create user_campaign" do
    assert_difference('UserCampaign.count') do
      post user_campaigns_url, params: { user_campaign: { campaign_id: @user_campaign.campaign_id, relationship: @user_campaign.relationship, user_id: @user_campaign.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_campaign" do
    get user_campaign_url(@user_campaign), as: :json
    assert_response :success
  end

  test "should update user_campaign" do
    patch user_campaign_url(@user_campaign), params: { user_campaign: { campaign_id: @user_campaign.campaign_id, relationship: @user_campaign.relationship, user_id: @user_campaign.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_campaign" do
    assert_difference('UserCampaign.count', -1) do
      delete user_campaign_url(@user_campaign), as: :json
    end

    assert_response 204
  end
end
