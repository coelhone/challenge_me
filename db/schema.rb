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

ActiveRecord::Schema.define(version: 20131101221000) do

  create_table "challenges", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "user_id"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "challenge_file_file_name"
    t.string   "challenge_file_content_type"
    t.integer  "challenge_file_file_size"
    t.datetime "challenge_file_updated_at"
    t.string   "state"
  end

  add_index "challenges", ["user_id"], name: "index_challenges_on_user_id"

  create_table "solutions", force: true do |t|
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "solution_file_file_name"
    t.string   "solution_file_content_type"
    t.integer  "solution_file_file_size"
    t.datetime "solution_file_updated_at"
    t.integer  "user_id"
    t.integer  "challenge_id"
  end

  add_index "solutions", ["challenge_id"], name: "index_solutions_on_challenge_id"
  add_index "solutions", ["user_id"], name: "index_solutions_on_user_id"

  create_table "user_challenge_solutions", force: true do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.integer  "solution_id"
    t.integer  "time"
    t.integer  "memory"
    t.integer  "lines"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_challenge_solutions", ["challenge_id"], name: "index_user_challenge_solutions_on_challenge_id"
  add_index "user_challenge_solutions", ["solution_id"], name: "index_user_challenge_solutions_on_solution_id"
  add_index "user_challenge_solutions", ["user_id"], name: "index_user_challenge_solutions_on_user_id"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
