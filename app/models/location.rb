class Location < ApplicationRecord

  has_many :story_modules
  has_many :chapters, through: :story_modules
  has_many :events, through: :story_moduless

  def formatted_lite
    {id: self.id, title: self.title, description: self.description}
  end

end
