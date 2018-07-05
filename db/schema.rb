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

ActiveRecord::Schema.define(version: 2018_07_05_145824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.bigint "character_id"
    t.string "range"
    t.string "effect"
    t.string "flair"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_abilities_on_character_id"
  end

  create_table "archetypes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "hp_level"
    t.string "skill_1"
    t.string "skill_2"
    t.string "skill_3"
    t.string "skill_4"
    t.string "skill_5"
    t.string "skill_6"
    t.string "skill_7"
    t.string "skill_8"
    t.string "skill_9"
    t.string "skill_10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.integer "level"
    t.integer "exp"
    t.bigint "archetype_id"
    t.bigint "race_id"
    t.string "role"
    t.integer "hp"
    t.integer "cp"
    t.integer "sp"
    t.integer "gp"
    t.integer "pp"
    t.integer "locX"
    t.integer "locY"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["archetype_id"], name: "index_characters_on_archetype_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.bigint "character_id"
    t.string "description"
    t.integer "uses"
    t.integer "durability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_items_on_character_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "lore"
    t.string "advantage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "name"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "abilities", "characters"
  add_foreign_key "characters", "archetypes"
  add_foreign_key "characters", "races"
  add_foreign_key "characters", "users"
  add_foreign_key "items", "characters"
end
