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

ActiveRecord::Schema.define(version: 20171229175414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "blue_team_id"
    t.bigint "red_team_id"
    t.bigint "winner_id"
    t.bigint "tournament_id"
    t.string "youtube_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blue_team_id"], name: "index_matches_on_blue_team_id"
    t.index ["red_team_id"], name: "index_matches_on_red_team_id"
    t.index ["tournament_id"], name: "index_matches_on_tournament_id"
    t.index ["winner_id"], name: "index_matches_on_winner_id"
  end

  create_table "teamfights", force: :cascade do |t|
    t.bigint "match_id"
    t.string "start_time_game"
    t.string "end_time_game"
    t.string "start_time_youtube"
    t.string "end_time_youtube"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_teamfights_on_match_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "tag"
    t.bigint "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "matches", "teams", column: "blue_team_id"
  add_foreign_key "matches", "teams", column: "red_team_id"
  add_foreign_key "matches", "teams", column: "winner_id"
  add_foreign_key "matches", "tournaments"
  add_foreign_key "teamfights", "matches"
  add_foreign_key "teams", "leagues"
end
