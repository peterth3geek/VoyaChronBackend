class Campaign < ApplicationRecord
  has_many :users, through: :user_campaigns
  has_many :characters, through: :character_campaigns
  has_many :events, through: :characters
  has_many :chapters
  has_many :story_modules, through: :chapters
  has_many :locations, through: :story_modules

end
