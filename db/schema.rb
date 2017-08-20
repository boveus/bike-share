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

ActiveRecord::Schema.define(version: 20170820170441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subscription_types", force: :cascade do |t|
    t.string "subscription_type"
  end

  create_table "trip_dates", force: :cascade do |t|
    t.string "date"
  end

  create_table "trip_times", force: :cascade do |t|
    t.string "time"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "duration"
    t.integer "start_station"
    t.integer "end_station"
    t.integer "bike_id"
    t.integer "subscription_type_id"
    t.integer "zip_code"
    t.integer "start_day"
    t.integer "end_day"
    t.integer "end_time"
    t.integer "start_time"
  end

  create_table "zip_codes", force: :cascade do |t|
    t.integer "zip_code"
  end

end
