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

ActiveRecord::Schema.define(version: 2021_12_04_235050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "trening_goals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "activity_type"
    t.string "goal_type"
    t.integer "target"
    t.integer "duration"
    t.date "start_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trening_goals_on_user_id"
  end

  create_table "trening_sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "start_time"
    t.integer "duration"
    t.string "activity_type"
    t.decimal "distance"
    t.text "note"
    t.string "feeling"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trening_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "gender"
    t.date "birth_date"
    t.decimal "height"
    t.decimal "start_weight"
    t.string "image"
    t.string "home_location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weight_goals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "goal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weight_goals_on_user_id"
  end

  create_table "weights", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.decimal "weight_value"
    t.datetime "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weights_on_user_id"
  end

  add_foreign_key "trening_goals", "users"
  add_foreign_key "trening_sessions", "users"
  add_foreign_key "weight_goals", "users"
  add_foreign_key "weights", "users"
end
