class Game < ApplicationRecord
  has_many :campaigns

  has_many :users, through: :campaigns
end
