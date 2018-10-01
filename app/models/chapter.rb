class Chapter < ApplicationRecord

  belongs_to :campaign
  has_many :characters, through: :campaign
  has_many :users, through: :characters
  has_many :story_modules
  has_many :locations, through: :story_modules
  has_many :events, through: :story_modules

  def formatted
    {id: self.id, title: self.title, description: self.description, campaign: self.campaign.formatted_lite, story_modules: self.story_modules_lite, locations: self.locations_lite, characters: self.characters_lite}
  end

  def formatted_mid
    {id: self.id, title: self.title, description: self.description, story_modules: self.story_modules_mid}
  end

  def formatted_lite
    {id: self.id, title: self.title, campaign: self.campaign.formatted_lite, description: self.description}
  end

end
