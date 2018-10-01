class Location < ApplicationRecord

  has_many :story_modules
  has_many :chapters, through: :story_modules
  has_many :events, through: :story_modules


  def formatted
    {id: self.id, title: self.title, description: self.description, sessions: self.story_modules_lite, chapters: self.chapters_lite, events: self.events_formatted_lite}
  end

  def formatted_lite
    {id: self.id, title: self.title, description: self.description}
  end

end
