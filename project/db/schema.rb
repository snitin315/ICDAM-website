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

ActiveRecord::Schema.define(version: 20170927115712) do

  create_table "about_institutes", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "about_irdinds", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "about_universal_innovators", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adv_coms", force: :cascade do |t|
    t.string   "name"
    t.string   "information"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "call_for_paper_sub_headings", force: :cascade do |t|
    t.integer  "callforpaper_id"
    t.string   "content"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "call_for_paper_sub_headings", ["callforpaper_id"], name: "index_call_for_paper_sub_headings_on_callforpaper_id"

  create_table "call_for_papers", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "important_dates", force: :cascade do |t|
    t.string   "title"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "image"
    t.string   "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steer_com_mems", force: :cascade do |t|
    t.string   "name"
    t.string   "information"
    t.integer  "steercompost_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "steer_com_mems", ["steercompost_id"], name: "index_steer_com_mems_on_steercompost_id"

  create_table "steer_com_posts", force: :cascade do |t|
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tech_coms", force: :cascade do |t|
    t.string   "name"
    t.string   "information"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
