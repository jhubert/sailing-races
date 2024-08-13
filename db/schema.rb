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

ActiveRecord::Schema[7.1].define(version: 2024_08_13_191535) do
  create_table "racers", force: :cascade do |t|
    t.integer "sailor_id", null: false
    t.integer "race_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_racers_on_race_id"
    t.index ["sailor_id"], name: "index_racers_on_sailor_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sailors", force: :cascade do |t|
    t.string "name"
    t.string "hometown"
    t.string "sail_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "racers", "races"
  add_foreign_key "racers", "sailors"
end
