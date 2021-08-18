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

ActiveRecord::Schema.define(version: 2021_08_18_144258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_teams", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "team_id"
    t.string "hoa"
    t.string "result"
    t.string "settled_in"
    t.string "head_coach"
    t.integer "goals"
    t.integer "shots"
    t.integer "tackles"
    t.integer "pim"
    t.integer "power_play_opps"
    t.integer "power_play_goals"
    t.float "face_off_win_percentage"
    t.integer "giveaways"
    t.integer "takeaways"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_teams_on_game_id"
    t.index ["team_id"], name: "index_game_teams_on_team_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "season"
    t.string "reg_post"
    t.string "date_time"
    t.integer "away_team_id"
    t.integer "home_team_id"
    t.integer "away_goals"
    t.integer "home_goals"
    t.string "venue"
    t.string "venue_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "franchise_id"
    t.string "team_name"
    t.string "abbreviation"
    t.string "stadium"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "game_teams", "games"
  add_foreign_key "game_teams", "teams"
end
