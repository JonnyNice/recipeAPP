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

ActiveRecord::Schema.define(version: 2023_01_01_234449) do

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.integer "creator_id"
    t.integer "recipe_id"
    t.index ["creator_id"], name: "index_comments_on_creator_id"
    t.index ["recipe_id"], name: "index_comments_on_recipe_id"
  end

  create_table "creators", force: :cascade do |t|
    t.string "name"
    t.string "bio"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "ingredients"
    t.string "instructions"
    t.integer "cooktime"
    t.boolean "spicy"
    t.boolean "vegan"
    t.boolean "contains_thc"
    t.integer "creator_id"
    t.index ["creator_id"], name: "index_recipes_on_creator_id"
  end

end