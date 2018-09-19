require 'test_helper'

class CharacterStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_stat = character_stats(:one)
  end

  test "should get index" do
    get character_stats_url, as: :json
    assert_response :success
  end

  test "should create character_stat" do
    assert_difference('CharacterStat.count') do
      post character_stats_url, params: { character_stat: { character_id: @character_stat.character_id, character_stats_dn_d5es_id: @character_stat.character_stats_dn_d5es_id } }, as: :json
    end

    assert_response 201
  end

  test "should show character_stat" do
    get character_stat_url(@character_stat), as: :json
    assert_response :success
  end

  test "should update character_stat" do
    patch character_stat_url(@character_stat), params: { character_stat: { character_id: @character_stat.character_id, character_stats_dn_d5es_id: @character_stat.character_stats_dn_d5es_id } }, as: :json
    assert_response 200
  end

  test "should destroy character_stat" do
    assert_difference('CharacterStat.count', -1) do
      delete character_stat_url(@character_stat), as: :json
    end

    assert_response 204
  end
end
