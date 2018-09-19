class Character < ApplicationRecord
  has_many :users, through: :user_characters
  has_many :events
  has_many :campaigns, through: :character_campaigns
  # has_one :character_stats_dn_d5e

  def character_stats
    CharacterStatsDnD5e.find_by(character_id: self.id)
  end

end
