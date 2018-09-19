class Location < ApplicationRecord
  has_many :story_modules
  has_many :events, through: :story_modules
  has_many :chapters, through: :story_modules
  has_many :campaigns, through: :chapters
end
