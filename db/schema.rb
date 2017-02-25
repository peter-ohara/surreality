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

ActiveRecord::Schema.define(version: 20170225212350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "architectures", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sale_listings", force: :cascade do |t|
    t.string   "listing_name"
    t.integer  "price_cents"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "string"
    t.string   "city"
    t.string   "state"
    t.string   "state_code"
    t.string   "postal_code"
    t.string   "country"
    t.string   "country_code"
    t.integer  "category_id"
    t.integer  "num_bedrooms"
    t.integer  "num_bathrooms"
    t.float    "floor_area"
    t.float    "lot_size"
    t.datetime "build_date"
    t.text     "description"
    t.integer  "architecture_id"
    t.text     "three_d_model"
    t.text     "three_sixty_video"
    t.text     "three_sixty_photo"
    t.text     "street_view"
    t.integer  "sold_cents"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["architecture_id"], name: "index_sale_listings_on_architecture_id", using: :btree
    t.index ["category_id"], name: "index_sale_listings_on_category_id", using: :btree
  end

  create_table "sale_photo_attachments", force: :cascade do |t|
    t.string   "photo"
    t.integer  "sale_listing_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["sale_listing_id"], name: "index_sale_photo_attachments_on_sale_listing_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "sale_listings", "architectures"
  add_foreign_key "sale_listings", "categories"
  add_foreign_key "sale_photo_attachments", "sale_listings"
end
