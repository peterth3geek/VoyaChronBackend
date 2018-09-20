class StoryModule < ApplicationRecord

  belongs_to :location
  belongs_to :chapter

  has_many :events

  has_one :campaign, through: :chapter

  has_many :characters, through: :campaign
  has_many :users, through: :campaign

  def formatted
    {id: self.id, title: self.title, description: self.description, campaign: self.campaign.formatted_lite, chapter: self.chapter.formatted_lite, location: self.location.formatted_lite, characters: self.characters_mid1, events: self.events}
  end

  def formatted_mid
    {id: self.id, title: self.title, description: self.description, location: self.location.formatted_lite}
  end

  def formatted_lite
    {id: self.id, title: self.title, description: self.description }
  end

end
