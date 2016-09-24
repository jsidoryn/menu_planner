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

ActiveRecord::Schema.define(version: 20160918103802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.string   "sub_title"
    t.text     "description"
    t.integer  "source"
    t.string   "url"
    t.string   "book"
    t.string   "page"
    t.integer  "net_carbs"
    t.integer  "rating"
    t.integer  "shortlist_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image_uid"
    t.string   "image_name"
    t.index ["shortlist_id"], name: "index_recipes_on_shortlist_id", using: :btree
  end

  create_table "shortlists", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "recipes", "shortlists"
end
