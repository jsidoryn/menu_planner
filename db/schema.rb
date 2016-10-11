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

ActiveRecord::Schema.define(version: 20161010012936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.decimal  "quantity",      precision: 5, scale: 2
    t.integer  "unit"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "orderable"
    t.string   "note"
    t.index ["ingredient_id"], name: "index_items_on_ingredient_id", using: :btree
    t.index ["recipe_id"], name: "index_items_on_recipe_id", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.string   "sub_title"
    t.text     "description"
    t.string   "source"
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
    t.integer  "meal"
    t.index ["shortlist_id"], name: "index_recipes_on_shortlist_id", using: :btree
  end

  create_table "shortlists", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "items", "ingredients"
  add_foreign_key "items", "recipes"
  add_foreign_key "recipes", "shortlists"
end
