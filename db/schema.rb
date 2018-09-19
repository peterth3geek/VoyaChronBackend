# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_09_19_211551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.integer "campaign_id"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_campaigns", force: :cascade do |t|
    t.integer "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "campaign_id"
  end

  create_table "character_items", force: :cascade do |t|
    t.integer "character_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_stats_dn_d5es", force: :cascade do |t|
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "wisdom"
    t.integer "intelligence"
    t.integer "charisma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "npc"
    t.string "other"
  end

  create_table "events", force: :cascade do |t|
    t.integer "character_id"
    t.string "description"
    t.integer "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "story_modules", force: :cascade do |t|
    t.integer "chapter_id"
    t.string "title"
    t.string "description"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_campaigns", force: :cascade do |t|
    t.integer "user_id"
    t.integer "campaign_id"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_characters", force: :cascade do |t|
    t.integer "user_id"
    t.integer "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
