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

ActiveRecord::Schema.define(version: 20170117090403) do

  create_table "iterations", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "projects_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["projects_id"], name: "index_iterations_on_projects_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.datetime "end_dates"
  end

end