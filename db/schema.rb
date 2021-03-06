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

ActiveRecord::Schema.define(version: 2019_04_05_195054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bike_images", force: :cascade do |t|
    t.integer "ref"
    t.string "owner_name"
    t.string "title"
    t.string "description"
    t.date "uploaded"
    t.date "taken"
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "riders", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "originCity"
    t.string "originState"
    t.string "locText"
    t.decimal "lat", precision: 5, scale: 2
    t.decimal "lng", precision: 5, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slogans", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "suggestion"
    t.integer "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lastName"
  end

end
