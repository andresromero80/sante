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

ActiveRecord::Schema.define(version: 2019_03_15_151919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.bigint "classification_id"
    t.bigint "symptom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classification_id"], name: "index_assignments_on_classification_id"
    t.index ["symptom_id"], name: "index_assignments_on_symptom_id"
  end

  create_table "classifications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classifications_symptoms", id: false, force: :cascade do |t|
    t.bigint "classification_id", null: false
    t.bigint "symptom_id", null: false
  end

  create_table "classifications_treatments", id: false, force: :cascade do |t|
    t.bigint "classification_id", null: false
    t.bigint "treatment_id", null: false
  end

  create_table "relations", force: :cascade do |t|
    t.bigint "symptom_id"
    t.bigint "treatment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["symptom_id"], name: "index_relations_on_symptom_id"
    t.index ["treatment_id"], name: "index_relations_on_treatment_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "symptoms_treatments", id: false, force: :cascade do |t|
    t.bigint "symptom_id", null: false
    t.bigint "treatment_id", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "type_t"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assignments", "classifications"
  add_foreign_key "assignments", "symptoms"
  add_foreign_key "relations", "symptoms"
  add_foreign_key "relations", "treatments"
end
