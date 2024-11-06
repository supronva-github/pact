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

ActiveRecord::Schema.define(version: 2024_11_05_234320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interests_users", id: false, force: :cascade do |t|
    t.bigint "interest_id", null: false
    t.bigint "user_id", null: false
    t.index ["interest_id", "user_id"], name: "index_interests_users_on_interest_id_and_user_id", unique: true
  end

  create_table "skils", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skils_users", id: false, force: :cascade do |t|
    t.bigint "skil_id", null: false
    t.bigint "user_id", null: false
    t.index ["skil_id", "user_id"], name: "index_skils_users_on_skil_id_and_user_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "patronymic"
    t.string "email"
    t.string "gender"
    t.integer "age"
    t.string "nationality"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end