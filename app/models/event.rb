class Event < ApplicationRecord
  belongs_to :character
  belongs_to :story_module

  has_one :location, through: :story_module
  has_one :chapter, through: :story_module
  has_one :campaign, through: :chapter
  has_one :user, through: :character


  def formatted
    {id: self.id, description: self.description, character: self.character.formatted_mid1, campaign: self.campaign.formatted_lite, session: self.story_module.formatted_lite}
  end

end
