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

ActiveRecord::Schema.define(version: 20160720164413) do

  create_table "bancos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.integer  "status"
    t.integer  "local_id"
    t.string   "placa"
    t.string   "modelo"
    t.integer  "combustivel"
    t.date     "anofabricacao"
    t.date     "andomodelo"
    t.decimal  "km"
    t.decimal  "valorvenda"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "cars", ["local_id"], name: "index_cars_on_local_id"

  create_table "conta", force: :cascade do |t|
    t.date     "vencimento"
    t.date     "emissao"
    t.decimal  "valor"
    t.integer  "Ficha_id"
    t.integer  "Customer_id"
    t.string   "historico"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "conta", ["Customer_id"], name: "index_conta_on_Customer_id"
  add_index "conta", ["Ficha_id"], name: "index_conta_on_Ficha_id"

  create_table "customers", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "cpfcnpj"
    t.integer  "clioufor"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fichas", force: :cascade do |t|
    t.date     "data"
    t.integer  "Vendedor_id"
    t.integer  "Banco_id"
    t.integer  "tipopfin"
    t.string   "coef"
    t.decimal  "valfinanceiro"
    t.integer  "numparcelas"
    t.decimal  "valorparcela"
    t.decimal  "valortotal"
    t.integer  "Customer_id"
    t.integer  "Cars_id"
    t.integer  "MeioPagamento_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "fichas", ["Banco_id"], name: "index_fichas_on_Banco_id"
  add_index "fichas", ["Cars_id"], name: "index_fichas_on_Cars_id"
  add_index "fichas", ["Customer_id"], name: "index_fichas_on_Customer_id"
  add_index "fichas", ["MeioPagamento_id"], name: "index_fichas_on_MeioPagamento_id"
  add_index "fichas", ["Vendedor_id"], name: "index_fichas_on_Vendedor_id"

  create_table "locals", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meio_pagamentos", force: :cascade do |t|
    t.integer  "numparcelas"
    t.integer  "tipo"
    t.string   "descricao"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "nf_vendas", force: :cascade do |t|
    t.string   "numerodocumento"
    t.decimal  "valor"
    t.decimal  "desconto"
    t.decimal  "acrescimo"
    t.integer  "Ficha_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "nf_vendas", ["Ficha_id"], name: "index_nf_vendas_on_Ficha_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vendedors", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
