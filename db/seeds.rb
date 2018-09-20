# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create(title: 'Dungeons and Dragons 5th Edition', description: 'The 5th Edition of Dungeons and Dragons')

6.times do
  User.create(username: Faker::Internet.username, email: Faker::Internet.email, about: Faker::Lorem.paragraph, password_digest: Faker::Internet.password)
end

12.times do
  Character.create(name: Faker::ElderScrolls.name, biography: Faker::Lorem.paragraph, npc: false, notes: Faker::StarWars.quote, user_id: 1+rand(6), campaign_id: 1+rand(3))
end

3.times do
  Campaign.create(title: Faker::Book.title, description: Faker::Lovecraft.paragraph, game_id: 1, dm_id: 1+rand(6))
end

Campaign.all.map do |campaign|
    4.times do
      Chapter.create(title: Faker::Book.title, description: Faker::Lovecraft.paragraph, campaign_id: campaign.id)
    end
end

6.times do
  Location.create(title: Faker::ElderScrolls.region, description: Faker::Lovecraft.paragraph)
end

Chapter.all.map do |chapter|
  4.times do
    StoryModule.create(title: Faker::Book.title, description: Faker::Lovecraft.paragraph, chapter_id: chapter.id, location_id: 1+rand(6))
  end
end

# StoryModule.all.map do |story|
#   1+rand(6).times do
#     Event.create(character_id: story.campaign.characters.sample.id, description: Faker::Seinfeld.quote, story_module_id: story.id)
#   end
# end
