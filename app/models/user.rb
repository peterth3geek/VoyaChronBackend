class User < ApplicationRecord
  has_many :characters
  has_many :campaigns, through: :characters

  has_many :events, through: :characters
  has_many :chapters, through: :campaigns
  has_many :story_modules, through: :chapters
  has_many :locations, through: :story_modules

  def formatted
    {id: self.id, username: self.username, email: self.email, about: self.about, characters: self.characters_mid2, campaigns_as_player: self.campaigns_lite_player, campaigns_as_gm: self.campaigns_lite_gm}
  end

  def formatted_mid
    {id: self.id, username: self.username, characters: self.characters_mid2, campaigns_as_player: self.campaigns_lite_player, campaigns_as_gm: self.campaigns_lite_gm}
  end

  def formatted_lite
    {id: self.id, username: self.username}
  end

end
