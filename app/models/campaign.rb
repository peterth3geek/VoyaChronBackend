class Campaign < ApplicationRecord
  has_many :characters
  has_many :users, through: :characters
  has_many :chapters
  has_many :story_modules, through: :chapters
  has_many :locations, through: :story_modules
  has_many :events, through: :characters

  def formatted
    {id: self.id, title: self.title, description: self.description, dungeonmaster: User.find(self.dm_id).username, characters: self.characters_mid2, players: self.campaign_players, chapters: self.chapters_mid}
  end

  def formatted_mid
    {id: self.id, title: self.title, description: self.description, dungeonmaster: User.find(self.dm_id).username, characters: self.characters_lite}
  end

  def formatted_lite
    {id: self.id, title: self.title}
  end

  def campaign_players
    self.characters.map do |character|
      character.user_lite
    end
  end


end
