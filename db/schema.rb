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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130214223210) do

  create_table "bestgames", :force => true do |t|
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bestlineups", :force => true do |t|
    t.integer  "bestgame_id"
    t.integer  "player_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "bestlineups", ["bestgame_id"], :name => "index_bestlineups_on_bestgame_id"
  add_index "bestlineups", ["player_id"], :name => "index_bestlineups_on_player_id"

  create_table "bettergames", :force => true do |t|
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "betterlineups", :force => true do |t|
    t.integer  "bettergame_id"
    t.integer  "player_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "betterlineups", ["bettergame_id"], :name => "index_betterlineups_on_bettergame_id"
  add_index "betterlineups", ["player_id"], :name => "index_betterlineups_on_player_id"

  create_table "children", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "parent_id"
  end

  create_table "foods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "idonlies", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jushos", :force => true do |t|
    t.integer  "todofuken_id"
    t.integer  "shichoson_id"
    t.string   "sonotajusho"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "jushos", ["shichoson_id"], :name => "index_jushos_on_shichoson_id"
  add_index "jushos", ["todofuken_id"], :name => "index_jushos_on_todofuken_id"

  create_table "lineups", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "lineups", ["game_id"], :name => "index_lineups_on_game_id"
  add_index "lineups", ["player_id"], :name => "index_lineups_on_player_id"

# Could not dump table "member" because of following StandardError
#   Unknown type '' for column 'id'

  create_table "minimodelchildren", :force => true do |t|
    t.text     "name"
    t.text     "detail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

# Could not dump table "minimodels" because of following StandardError
#   Unknown type 'minimodelchilds' for column 'minimodelchilds'

  create_table "onecolumnmodels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "thirdname"
  end

  create_table "parents", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.integer  "first_favfood_id"
    t.integer  "second_favfood_id"
    t.integer  "third_favfood_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ramen", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rleagues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rmembers", :force => true do |t|
    t.string   "name"
    t.integer  "rteam_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rmembers", ["rteam_id"], :name => "index_rmembers_on_rteam_id"

  create_table "rteams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "rleague_id"
  end

  add_index "rteams", ["rleague_id"], :name => "index_rteams_on_rleague_id"

  create_table "shichosons", :force => true do |t|
    t.integer  "todofuken_id"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "shichosons", ["todofuken_id"], :name => "index_shichosons_on_todofuken_id"

  create_table "startingmembers", :force => true do |t|
    t.date     "game_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

# Could not dump table "team" because of following StandardError
#   Unknown type '' for column 'id'

  create_table "todofukens", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
