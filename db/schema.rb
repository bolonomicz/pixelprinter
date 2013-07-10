# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130710165325) do

  create_table "print_template_versions", :force => true do |t|
    t.integer  "print_template_id"
    t.text     "body"
    t.datetime "created_at"
    t.integer  "version",           :default => 0
    t.string   "snapshot"
  end

  create_table "print_templates", :force => true do |t|
    t.integer  "shop_id"
    t.text     "body"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "default",    :default => false
  end

  add_index "print_templates", ["shop_id"], :name => "index_print_templates_on_shop_id"

  create_table "shops", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.boolean  "templates_exported", :default => false
  end

  add_index "shops", ["url"], :name => "index_shops_on_url"

end
