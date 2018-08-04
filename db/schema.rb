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

ActiveRecord::Schema.define(version: 2018_08_03_061440) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "lecture_id"
    t.integer "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecture_id"], name: "index_courses_on_lecture_id"
    t.index ["semester_id"], name: "index_courses_on_semester_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "learnings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.float "midterm_point"
    t.float "final_point"
    t.float "summary_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_learnings_on_course_id"
    t.index ["user_id"], name: "index_learnings_on_user_id"
  end

  create_table "lectures", force: :cascade do |t|
    t.string "name"
    t.integer "credits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_years", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name"
    t.integer "school_year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_year_id"], name: "index_semesters_on_school_year_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.string "email"
    t.date "birthday"
    t.string "password_digest"
    t.string "remember_digest"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
