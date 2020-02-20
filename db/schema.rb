# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_20_225244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "tappiWet1"
    t.integer "tappiDry1"
    t.integer "outsideWet1"
    t.integer "outsideDry1"
    t.integer "insideWet1"
    t.integer "insideDry1"
    t.integer "hoodWet1"
    t.integer "hoodDry1"
    t.integer "tappiWet2"
    t.integer "tappiDry2"
    t.integer "outsideWet2"
    t.integer "outsideDry2"
    t.integer "insideWet2"
    t.integer "insideDry2"
    t.integer "hoodWet2"
    t.integer "hoodDry2"
    t.integer "tappiWet3"
    t.integer "tappiDry3"
    t.integer "outsideWet3"
    t.integer "outsideDry3"
    t.integer "insideWet3"
    t.integer "insideDry3"
    t.integer "hoodWet3"
    t.integer "hoodDry3"
    t.integer "tempPap10"
    t.integer "tempPap11"
    t.integer "tempPap12"
    t.integer "tempPap13"
    t.integer "tempPap14"
    t.integer "tempPap15"
    t.integer "tempPap16"
    t.integer "tempPap17"
    t.integer "tempPap18"
    t.integer "tempDry11"
    t.integer "tempDry12"
    t.integer "tempDry13"
    t.integer "tempDry14"
    t.integer "tempDry15"
    t.integer "tempDry16"
    t.integer "tempDry17"
    t.integer "tempDry18"
    t.integer "tempPap20"
    t.integer "tempPap21"
    t.integer "tempPap22"
    t.integer "tempPap23"
    t.integer "tempPap24"
    t.integer "tempPap25"
    t.integer "tempPap26"
    t.integer "tempPap27"
    t.integer "tempPap28"
    t.integer "tempDry21"
    t.integer "tempDry22"
    t.integer "tempDry23"
    t.integer "tempDry24"
    t.integer "tempDry25"
    t.integer "tempDry26"
    t.integer "tempDry27"
    t.integer "tempDry28"
    t.integer "tempPap230"
    t.integer "tempPap31"
    t.integer "tempPap32"
    t.integer "tempPap33"
    t.integer "tempPap34"
    t.integer "tempPap35"
    t.integer "tempPap36"
    t.integer "tempPap37"
    t.integer "tempPap38"
    t.integer "tempDry31"
    t.integer "tempDry32"
    t.integer "tempDry33"
    t.integer "tempDry34"
    t.integer "tempDry35"
    t.integer "tempDry36"
    t.integer "tempDry37"
    t.integer "tempDry38"
    t.integer "enterConsist"
    t.integer "enterMoist"
    t.integer "leaveMoist"
    t.integer "speed"
    t.integer "trimWidth"
    t.integer "basisWeight"
    t.integer "steamPressure"
    t.integer "steamReq"
    t.integer "measuredCond"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "crypted_password"
    t.string "salt"
  end

end
