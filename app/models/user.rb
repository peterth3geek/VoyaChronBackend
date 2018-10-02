class User < ApplicationRecord
  has_many :characters
  has_many :campaigns, through: :characters

  has_many :events, through: :characters
  has_many :chapters, through: :campaigns
  has_many :story_modules, through: :chapters
  has_many :locations, through: :story_modules

  def formatted
    {id: self.id, username: self.username, email: self.email, about: self.about, characters: self.characters_formatted, campaigns: self.campaigns_lite, gm_campaigns: self.all_campaigns_lite, events: self.events_formatted}
  end

  def formatted_mid
    {id: self.id, username: self.username, characters: self.characters_formatted, events: self.events_formatted, campaigns: self.campaigns_lite, gm_campaigns: self.all_campaigns_lite}
  end

  def formatted_lite
    {id: self.id, username: self.username}
  end

  def all_campaigns_lite
    new = Campaign.all.select do |campaign|
        campaign.dm_id == self.id
    end

    new.map do |c|
      c.formatted
    end
  end

end
