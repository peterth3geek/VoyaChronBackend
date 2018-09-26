class Character < ApplicationRecord

  belongs_to :user
  belongs_to :campaign
  has_many :events
  has_many :chapters, through: :campaign
  has_many :story_modules, through: :events

  def formatted
    {id: self.id, name: self.name, player: self.user.formatted_lite, campaign: self.campaign.formatted_mid, events: self.events_formatted, biography: self.biography, notes: self.notes}
  end

  def formatted_mid1
    {id: self.id, name: self.name, player: self.user.formatted_lite}
  end

  def formatted_mid2
    {id: self.id, name: self.name, campaign: self.campaign.formatted_mid, events: self.events_formatted, player: self.user_lite}
  end

  def formatted_lite
    {id: self.id, name: self.name}
  end

end
