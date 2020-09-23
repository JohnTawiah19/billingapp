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

ActiveRecord::Schema.define(version: 2020_09_19_131704) do

  create_table "projects", force: :cascade do |t|
    t.string "company"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "timesheet_id", null: false
    t.index ["timesheet_id"], name: "index_projects_on_timesheet_id"
  end

  create_table "projects_timesheets", id: false, force: :cascade do |t|
    t.integer "timesheet_id", null: false
    t.integer "project_id", null: false
  end

  create_table "timesheets", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "billing_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "projects", "timesheets"
end
