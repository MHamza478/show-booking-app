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

ActiveRecord::Schema.define(version: 2021_06_10_192847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinemas", force: :cascade do |t|
    t.string "cinema_name"
    t.string "cinema_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "movie_name"
    t.string "movie_description"
    t.integer "movie_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shows", force: :cascade do |t|
    t.string "show_time"
    t.string "show_date"
    t.integer "show_room_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cinema_id"
    t.bigint "movie_id"
    t.index ["cinema_id"], name: "index_shows_on_cinema_id"
    t.index ["movie_id"], name: "index_shows_on_movie_id"
  end

  add_foreign_key "shows", "cinemas"
  add_foreign_key "shows", "movies"
end
