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

ActiveRecord::Schema.define(version: 2018_08_26_213844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "paginas", force: :cascade do |t|
    t.string "titulo"
    t.string "ruta"
    t.string "subTitulo"
    t.string "enunciado", null: false
    t.string "contenido", null: false
    t.string "icono", null: false
    t.string "color", null: false
    t.bigint "parametros_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parametros_id"], name: "index_paginas_on_parametros_id"
  end

  create_table "parametros", force: :cascade do |t|
    t.string "tipo", null: false
    t.string "nombre", null: false
    t.string "pertenece", null: false
    t.boolean "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "paginas", "parametros", column: "parametros_id"
end
