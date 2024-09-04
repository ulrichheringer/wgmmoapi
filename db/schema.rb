# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_09_03_445678) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "banks", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.integer "xp", default: 0
    t.integer "level", default: 0
    t.uuid "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_banks_on_name", unique: true
  end

  create_table "banks_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bank_id", null: false
    t.index ["bank_id", "user_id"], name: "index_banks_users_on_bank_id_and_user_id"
    t.index ["user_id", "bank_id"], name: "index_banks_users_on_user_id_and_bank_id"
  end

  create_table "bodyguards", force: :cascade do |t|
    t.bigint "characters_id", null: false
    t.uuid "banks_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["banks_id"], name: "index_bodyguards_on_banks_id"
    t.index ["characters_id"], name: "index_bodyguards_on_characters_id"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "xp", default: 0
    t.integer "gold", default: 0
    t.integer "attack", default: 0
    t.integer "defense", default: 0
    t.integer "health", default: 0
    t.integer "job", default: 0
    t.boolean "wanted", default: false
    t.integer "bounty", default: 0
    t.integer "fish_level", default: 0
    t.integer "craft_level", default: 0
    t.integer "smith_level", default: 0
    t.integer "wood_level", default: 0
    t.integer "bounty_level", default: 0
    t.integer "thief_level", default: 0
    t.integer "player_kills", default: 0
    t.integer "bot_kills", default: 0
    t.integer "banker_level", default: 0
    t.integer "dungeon_level", default: 0
    t.integer "dungeon_ranking", default: 0
    t.integer "energy", default: 0
    t.uuid "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "chests", force: :cascade do |t|
    t.integer "rarity"
    t.uuid "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chests_on_user_id"
  end

  create_table "collectables", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.integer "rarity"
    t.uuid "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_collectables_on_name", unique: true
    t.index ["user_id"], name: "index_collectables_on_user_id"
  end

  create_table "guilds", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.uuid "owner_id", null: false
    t.integer "xp", default: 0
    t.integer "level", default: 0
    t.integer "rank", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_guilds_on_name", unique: true
  end

  create_table "guilds_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "guild_id", null: false
    t.index ["guild_id", "user_id"], name: "index_guilds_users_on_guild_id_and_user_id"
    t.index ["user_id", "guild_id"], name: "index_guilds_users_on_user_id_and_guild_id"
  end

  create_table "item_catalogs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_weapon", default: false
    t.boolean "is_armor", default: false
    t.integer "armor_type"
    t.boolean "is_food", default: false
    t.integer "stats", null: false
    t.integer "rarity", default: 0
    t.integer "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_item_catalogs_on_name", unique: true
  end

  create_table "items", force: :cascade do |t|
    t.uuid "item_catalogs_id", null: false
    t.bigint "markets_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_catalogs_id"], name: "index_items_on_item_catalogs_id"
    t.index ["markets_id"], name: "index_items_on_markets_id"
  end

  create_table "markets", force: :cascade do |t|
    t.integer "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.integer "rarity"
    t.integer "xp", default: 0
    t.integer "level", default: 0
    t.integer "attack", default: 0
    t.integer "defense", default: 0
    t.integer "health", default: 0
    t.uuid "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", null: false
    t.string "username", null: false
    t.string "password", null: false
    t.uuid "admin_key"
    t.boolean "is_admin", default: false
    t.boolean "is_premium", default: false
    t.uuid "premium_key"
    t.integer "gems", default: 0
    t.integer "rank", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "bodyguards", "banks", column: "banks_id"
  add_foreign_key "bodyguards", "characters", column: "characters_id"
  add_foreign_key "characters", "users"
  add_foreign_key "chests", "users"
  add_foreign_key "collectables", "users"
  add_foreign_key "items", "item_catalogs", column: "item_catalogs_id"
  add_foreign_key "items", "markets", column: "markets_id"
  add_foreign_key "pets", "users"
end
