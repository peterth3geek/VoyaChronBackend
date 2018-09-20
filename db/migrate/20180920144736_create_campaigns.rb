class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :description
      t.integer :game_id
      t.integer :dm_id

      t.timestamps
    end
  end
end
