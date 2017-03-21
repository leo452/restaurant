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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170320135131) do

  create_table "list_orders", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "plate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "list_orders", ["order_id"], name: "index_list_orders_on_order_id"
  add_index "list_orders", ["plate_id"], name: "index_list_orders_on_plate_id"

  create_table "menus", force: :cascade do |t|
    t.integer  "plate_id"
    t.integer  "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "menus", ["plate_id"], name: "index_menus_on_plate_id"

  create_table "models", force: :cascade do |t|
    t.date     "fecha"
    t.string   "nemo"
    t.integer  "volumen_total",    limit: 100
    t.decimal  "rotacion_mensual"
    t.string   "nuemro_ops"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "numeroMesa"
    t.integer  "numeroSopas"
    t.boolean  "estado"
    t.date     "fecha"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "plates", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "precio"
    t.integer  "cantidad_dia"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
