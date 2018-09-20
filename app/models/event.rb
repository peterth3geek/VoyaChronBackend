class Event < ApplicationRecord
  belongs_to :character
  belongs_to :story_module

  has_one :location, through: :story_module
  has_one :chapter, through: :story_module
  has_one :campaign, through: :chapter
  has_one :user, through: :character

end
