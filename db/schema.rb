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

ActiveRecord::Schema.define(version: 20150422035905) do

  create_table "evaluations", force: true do |t|
    t.string   "published_articles"
    t.string   "accepted_articles"
    t.string   "submitted_articles"
    t.string   "proceedings"
    t.string   "presentations"
    t.string   "other"
    t.string   "funded_proposals"
    t.string   "submitted_proposals"
    t.string   "teaching"
    t.string   "teaching_achievements"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "published_articles_file"
    t.string   "accepted_articles_file"
    t.string   "submitted_articles_file"
    t.string   "proceedings_file"
    t.string   "presentations_file"
    t.string   "other_file"
    t.string   "funded_proposals_file"
    t.string   "submitted_proposals_file"
    t.string   "teaching_file"
    t.string   "teaching_achievements_file"
  end

  create_table "surveys", force: true do |t|
    t.string   "q1"
    t.string   "q1_file"
    t.string   "q2"
    t.string   "q2_file"
    t.string   "q3"
    t.string   "q3_file"
    t.string   "q4"
    t.string   "q4_file"
    t.string   "q5"
    t.string   "q5_file"
    t.string   "q6"
    t.string   "q6_file"
    t.string   "q7"
    t.string   "q7_file"
    t.string   "q8"
    t.string   "q8_file"
    t.string   "q9"
    t.string   "q9_file"
    t.string   "q10"
    t.string   "q10_file"
    t.string   "q11"
    t.string   "q11_file"
    t.string   "q12"
    t.string   "q12_file"
    t.string   "q13"
    t.string   "q13_file"
    t.string   "q14"
    t.string   "q14_file"
    t.string   "q15"
    t.string   "q15_file"
    t.string   "q16"
    t.string   "q16_file"
    t.string   "q17"
    t.string   "q17_file"
    t.string   "q18"
    t.string   "q18_file"
    t.string   "q19"
    t.string   "q19_file"
    t.string   "q20"
    t.string   "q20_file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ct1"
    t.string   "crn1"
    t.string   "no1"
    t.string   "ct2"
    t.string   "crn2"
    t.string   "no2"
    t.string   "ct3"
    t.string   "crn3"
    t.string   "no3"
    t.string   "ct4"
    t.string   "crn4"
    t.string   "no4"
    t.string   "ct5"
    t.string   "crn5"
    t.string   "no5"
    t.string   "ct6"
    t.string   "crn6"
    t.string   "no6"
    t.string   "ct7"
    t.string   "crn7"
    t.string   "no7"
    t.string   "ct8"
    t.string   "crn8"
    t.string   "no8"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "department"
    t.string   "rank"
    t.string   "status"
    t.string   "contract"
    t.boolean  "admin"
    t.boolean  "limit"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
