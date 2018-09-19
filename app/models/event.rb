class Event < ApplicationRecord
  belongs_to :character
  belongs_to :story_module
  has_one :location, through: :story_module
  has_one :campaign, through: :character
end
