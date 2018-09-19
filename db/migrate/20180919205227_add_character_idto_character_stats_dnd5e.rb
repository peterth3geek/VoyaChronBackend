class AddCharacterIdtoCharacterStatsDnd5e < ActiveRecord::Migration[5.2]
  def change
    add_column :character_stats_dn_d5es, :character_id, :integer
  end
end
