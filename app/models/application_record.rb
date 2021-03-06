class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true



# User Functions
def users_lite
  self.users.map do |user|
    user.formatted_lite
  end
end

def user_lite
  self.user.formatted_lite
end

# Campaign Functions

def campaigns_lite
  self.campaigns.map do |campaign|
      campaign.formatted_mid
    end
end

  # Character Functions

  def characters_lite
    self.characters.map do |character|
      character.formatted_lite
    end
  end

  def characters_mid1
    self.characters.map do |character|
      character.formatted_mid1
    end
  end

  def characters_mid2
    self.characters.map do |character|
      character.formatted_mid2
    end
  end

  def characters_formatted
    self.characters.map do |character|
      character.formatted
    end
  end

  # Chapter functions

  def chapters_lite
    self.chapters.map do |chapter|
      chapter.formatted_lite
    end
  end

  def chapters_mid
    self.chapters.map do |chapter|
      chapter.formatted_mid
    end
  end

  # StoryModule functions

  def story_modules_lite
    self.story_modules.map do |story|
      story.formatted_lite
    end
  end

  def story_modules_mid
    self.story_modules.map do |story|
      story.formatted_mid
    end
  end

  # Location Functions

  def locations_lite
    self.locations.map do |location|
      location.formatted_lite
    end
  end

  def events_formatted
    self.events.map do |event|
      event.formatted
    end
  end

  def events_formatted_lite
    self.events.map do |event|
      event.formatted_lite
    end
  end

end
