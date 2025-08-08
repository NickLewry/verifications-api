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

ActiveRecord::Schema[7.1].define(version: 2025_08_07_132006) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creditors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "given_name"
    t.string "family_name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verification_attempts", force: :cascade do |t|
    t.string "type"
    t.string "status"
    t.string "provider_used"
    t.string "method_attempted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verification_journeys", force: :cascade do |t|
    t.string "product"
    t.string "entity_type"
    t.string "geo"
    t.string "status"
    t.string "journey_config_name"
    t.string "journey_config_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verification_managers", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verification_steps", force: :cascade do |t|
    t.string "type"
    t.string "config_type"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verifications", force: :cascade do |t|
    t.string "type"
    t.string "status"
    t.string "successful_method"
    t.string "provider_used"
    t.string "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
