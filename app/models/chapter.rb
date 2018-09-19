class Chapter < ApplicationRecord
  belongs_to :campaign
  has_many :story_modules
  has_many :locations, through: :story_modules
  has_many :events, through: :story_modules
  has_many :characters, through: :campaign
end
