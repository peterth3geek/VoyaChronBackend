class User < ApplicationRecord
  has_many :characters, through: :user_characters
  has_many :campaigns, through: :user_campaigns
  has_many :events, through: :characters
end
