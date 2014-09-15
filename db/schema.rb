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

ActiveRecord::Schema.define(version: 20140915233540) do

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

  create_table "enderecos", force: true do |t|
    t.string   "nome"
    t.string   "rua"
    t.string   "numero"
    t.string   "complemento"
    t.string   "CEP"
    t.string   "cidade"
    t.string   "estado"
    t.integer  "donoendereco_id"
    t.string   "donoendereco_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enderecos", ["donoendereco_id", "donoendereco_type"], name: "index_enderecos_on_donoendereco_id_and_donoendereco_type", using: :btree

  create_table "hospitals", force: true do |t|
    t.string   "nome"
    t.integer  "diasprontuario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "internacaos", force: true do |t|
    t.string   "gih"
    t.date     "validade"
    t.string   "leito"
    t.integer  "hospital_id"
    t.integer  "paciente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", force: true do |t|
    t.string   "nome"
    t.integer  "convenio_id"
    t.string   "carteiranumero"
    t.date     "idade"
    t.decimal  "peso",           precision: 8, scale: 2
    t.decimal  "altura",         precision: 8, scale: 2
    t.boolean  "iskid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pacientes", ["convenio_id"], name: "index_pacientes_on_convenio_id", using: :btree

  create_table "prescricaones", force: true do |t|
    t.date     "data"
    t.decimal  "custo",          precision: 8, scale: 8
    t.decimal  "valorfaturado",  precision: 8, scale: 8
    t.integer  "paciente_id"
    t.integer  "internacao_id"
    t.string   "nutricionista"
    t.string   "equipo"
    t.string   "autorizacaourl"
    t.string   "contamedicaurl"
    t.string   "checagemurl"
    t.string   "entregaurl"
    t.string   "motoqueiro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prescricaones", ["internacao_id"], name: "index_prescricaones_on_internacao_id", using: :btree
  add_index "prescricaones", ["paciente_id"], name: "index_prescricaones_on_paciente_id", using: :btree

end
