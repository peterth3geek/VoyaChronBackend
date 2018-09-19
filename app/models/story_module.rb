class StoryModule < ApplicationRecord
  has_many :events
  belongs_to :chapter
  has_one :campaign, through: :chapter
  belongs_to :location
end
