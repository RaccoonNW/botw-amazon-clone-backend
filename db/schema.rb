# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_28_175850) do
  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "defense"
    t.string "effect"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arrows", force: :cascade do |t|
    t.string "name"
    t.string "effect"
    t.string "image"
    t.text "description"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bows", force: :cascade do |t|
    t.string "name"
    t.integer "attack"
    t.integer "durability"
    t.integer "range"
    t.text "description"
    t.string "category"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shields", force: :cascade do |t|
    t.string "name"
    t.integer "guard"
    t.integer "durability"
    t.string "material"
    t.string "image"
    t.text "description"
    t.string "category"
    t.integer "defense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "handed"
    t.string "category"
    t.integer "attack"
    t.integer "durability"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
