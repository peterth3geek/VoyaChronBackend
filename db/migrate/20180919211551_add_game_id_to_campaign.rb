class AddGameIdToCampaign < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :game_id, :integer
  end
end
