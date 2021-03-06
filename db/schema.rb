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

ActiveRecord::Schema.define(version: 2020_11_19_121638) do

  create_table "workers", force: :cascade do |t|
    t.string "position"
    t.string "language"
    t.string "specialization"
    t.integer "work_experience"
    t.integer "current_work_experience"
    t.integer "month_salary"
    t.integer "change_salary"
    t.string "city"
    t.integer "company_size"
    t.string "company_type"
    t.string "sex"
    t.integer "age"
    t.string "education"
    t.string "university"
    t.string "student_status"
    t.string "english_level"
    t.string "subject_area"
    t.string "filling_date"
    t.string "user_agent"
    t.integer "exp"
    t.integer "current_job_exp"
    t.integer "salary"
    t.string "cls"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
