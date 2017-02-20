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

ActiveRecord::Schema.define(version: 20170211161021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.string   "listing_name"
    t.text     "summary"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "price"
    t.integer  "accomodates"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "photo_attachments", force: :cascade do |t|
    t.string   "photo"
    t.integer  "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_photo_attachments_on_listing_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "three_d_models", force: :cascade do |t|
    t.text     "embed_link"
    t.integer  "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_three_d_models_on_listing_id", using: :btree
  end

  create_table "three_sixty_photos", force: :cascade do |t|
    t.text     "embed_link"
    t.integer  "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_three_sixty_photos_on_listing_id", using: :btree
  end

  create_table "three_sixty_videos", force: :cascade do |t|
    t.text     "embed_link"
    t.integer  "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_three_sixty_videos_on_listing_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "photo_attachments", "listings"
  add_foreign_key "three_d_models", "listings"
  add_foreign_key "three_sixty_photos", "listings"
  add_foreign_key "three_sixty_videos", "listings"
end
