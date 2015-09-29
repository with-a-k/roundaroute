# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150929213820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "routes", force: :cascade do |t|
    t.string   "origin"
    t.string   "name"
    t.string   "distance"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.float    "origin_latitude"
    t.float    "origin_longitude"
    t.float    "waypoint1_latitude"
    t.float    "waypoint1_longitude"
    t.float    "waypoint2_latitude"
    t.float    "waypoint2_longitude"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "uid"
    t.string   "token"
    t.string   "secret"
  end

end
