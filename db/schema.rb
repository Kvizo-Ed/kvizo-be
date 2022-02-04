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

ActiveRecord::Schema.define(version: 2022_02_04_054725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "multis", force: :cascade do |t|
    t.string "subject"
    t.string "topic"
    t.string "title"
    t.integer "grade"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_multis_on_user_id"
  end

  create_table "possible_answers", force: :cascade do |t|
    t.string "text"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_possible_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question_text"
    t.string "correct_answer"
    t.bigint "multi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["multi_id"], name: "index_questions_on_multi_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "multis", "users"
  add_foreign_key "possible_answers", "questions"
  add_foreign_key "questions", "multis"
end
