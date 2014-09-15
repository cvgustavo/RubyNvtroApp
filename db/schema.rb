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

ActiveRecord::Schema.define(version: 20140915225406) do

  create_table "contatos", force: true do |t|
    t.string   "nome"
    t.string   "funcao"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.integer  "donocontato_id"
    t.string   "donocontato_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contatos", ["donocontato_id", "donocontato_type"], name: "index_contatos_on_donocontato_id_and_donocontato_type", using: :btree

  create_table "convenios", force: true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "urllogo"
    t.string   "site"
    t.date     "datalimitefaturamento"
    t.decimal  "faturamentomedio",      precision: 8, scale: 2
    t.decimal  "ultimofaturamento",     precision: 8, scale: 2
    t.integer  "qtdpacientes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end