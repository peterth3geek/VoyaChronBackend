require 'test_helper'

class CharacterStatsDnD5esControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_stats_dn_d5e = character_stats_dn_d5es(:one)
  end

  test "should get index" do
    get character_stats_dn_d5es_url, as: :json
    assert_response :success
  end

  test "should create character_stats_dn_d5e" do
    assert_difference('CharacterStatsDnD5e.count') do
      post character_stats_dn_d5es_url, params: { character_stats_dn_d5e: { charisma: @character_stats_dn_d5e.charisma, constitution: @character_stats_dn_d5e.constitution, dexterity: @character_stats_dn_d5e.dexterity, intelligence: @character_stats_dn_d5e.intelligence, stregnth: @character_stats_dn_d5e.stregnth, wisdom: @character_stats_dn_d5e.wisdom } }, as: :json
    end

    assert_response 201
  end

  test "should show character_stats_dn_d5e" do
    get character_stats_dn_d5e_url(@character_stats_dn_d5e), as: :json
    assert_response :success
  end

  test "should update character_stats_dn_d5e" do
    patch character_stats_dn_d5e_url(@character_stats_dn_d5e), params: { character_stats_dn_d5e: { charisma: @character_stats_dn_d5e.charisma, constitution: @character_stats_dn_d5e.constitution, dexterity: @character_stats_dn_d5e.dexterity, intelligence: @character_stats_dn_d5e.intelligence, stregnth: @character_stats_dn_d5e.stregnth, wisdom: @character_stats_dn_d5e.wisdom } }, as: :json
    assert_response 200
  end

  test "should destroy character_stats_dn_d5e" do
    assert_difference('CharacterStatsDnD5e.count', -1) do
      delete character_stats_dn_d5e_url(@character_stats_dn_d5e), as: :json
    end

    assert_response 204
  end
end
