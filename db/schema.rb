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

ActiveRecord::Schema.define(version: 20130728011823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_openings", force: true do |t|
    t.integer "category_id"
    t.integer "opening_id"
  end

  add_index "categories_openings", ["category_id"], name: "index_categories_openings_on_category_id", using: :btree
  add_index "categories_openings", ["opening_id"], name: "index_categories_openings_on_opening_id", using: :btree

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.date     "started_on"
    t.date     "ended_on"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["student_id"], name: "index_jobs_on_student_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "street_1"
    t.string   "street_2"
    t.string   "zip_code"
    t.integer  "lat"
    t.integer  "lng"
    t.integer  "employer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["employer_id"], name: "index_locations_on_employer_id", using: :btree

  create_table "openings", force: true do |t|
    t.string   "title"
    t.date     "starts_on"
    t.string   "compensation"
    t.string   "major"
    t.text     "description"
    t.integer  "employer_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "openings", ["employer_id"], name: "index_openings_on_employer_id", using: :btree
  add_index "openings", ["location_id"], name: "index_openings_on_location_id", using: :btree

  create_table "registrants", force: true do |t|
    t.string   "email"
    t.string   "code"
    t.datetime "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "zip_code"
    t.integer  "lat"
    t.integer  "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studies", force: true do |t|
    t.date     "started_on"
    t.date     "ended_on"
    t.boolean  "did_graduate"
    t.string   "major"
    t.string   "minor"
    t.integer  "student_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "studies", ["school_id"], name: "index_studies_on_school_id", using: :btree
  add_index "studies", ["student_id"], name: "index_studies_on_student_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "type",            null: false
    t.string   "name_first"
    t.string   "name_last"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "zip_code"
    t.integer  "lat"
    t.integer  "lng"
    t.string   "name_of_company"
    t.string   "email"
    t.string   "salt"
    t.string   "fish"
    t.string   "code"
    t.datetime "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
