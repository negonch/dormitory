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

ActiveRecord::Schema.define(version: 20190120134718) do

  create_table "badges", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "number"
    t.date     "date_issue"
    t.string   "comment"
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "category_name"
    t.decimal  "monthly_rate"
  end

  create_table "contracts", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "number_contract"
    t.date     "date_signing"
    t.date     "expiration_date"
    t.string   "direction_number"
    t.date     "direction_date"
    t.date     "arrival_date"
    t.integer  "student_id"
    t.integer  "category_id"
  end

  add_index "contracts", ["category_id"], name: "index_contracts_on_category_id"
  add_index "contracts", ["student_id"], name: "index_contracts_on_student_id"

  create_table "faculties", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "faculty_name"
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "course_number"
    t.integer  "faculty_id"
  end

  add_index "groups", ["faculty_id"], name: "index_groups_on_faculty_id"

  create_table "guests", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "surname"
    t.string   "name"
    t.string   "patronymic"
    t.date     "arrival_date"
    t.date     "departure_date"
    t.integer  "student_id"
  end

  add_index "guests", ["student_id"], name: "index_guests_on_student_id"

  create_table "payments", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "check_number"
    t.date     "date_payment"
    t.string   "month_payment"
    t.decimal  "sum"
    t.integer  "student_id"
  end

  add_index "payments", ["student_id"], name: "index_payments_on_student_id"

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.string   "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "room_number"
    t.integer  "number_persons"
    t.string   "comment"
  end

  create_table "sexes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "sex_name"
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "surname"
    t.string   "name"
    t.string   "patronymic"
    t.date     "date_birth"
    t.string   "country_residense"
    t.string   "citizenchip"
    t.string   "passport"
    t.string   "address"
    t.decimal  "phone_number"
    t.integer  "group_id"
    t.integer  "sex_id"
    t.integer  "badge_id"
    t.integer  "room_id"
  end

  add_index "students", ["badge_id"], name: "index_students_on_badge_id"
  add_index "students", ["group_id"], name: "index_students_on_group_id"
  add_index "students", ["room_id"], name: "index_students_on_room_id"
  add_index "students", ["sex_id"], name: "index_students_on_sex_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
  end

end
