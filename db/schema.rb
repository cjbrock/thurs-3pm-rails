# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_15_192951) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "genre"
  end

  create_table "concerts", force: :cascade do |t|
    t.string "location"
    t.string "tour"
    t.integer "fan_id", null: false
    t.integer "artist_id", null: false
    t.index ["artist_id"], name: "index_concerts_on_artist_id"
    t.index ["fan_id"], name: "index_concerts_on_fan_id"
  end

  create_table "fans", force: :cascade do |t|
    t.string "name"
    t.string "address"
  end

  add_foreign_key "concerts", "artists"
  add_foreign_key "concerts", "fans"
end
