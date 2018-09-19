class AddCampaignIdToCharacterCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :character_campaigns, :campaign_id, :integer
  end
end
