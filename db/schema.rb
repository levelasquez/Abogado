<<<<<<< HEAD
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

ActiveRecord::Schema.define(version: 20150522211410) do

  create_table "abogado_ps", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "ipsa"
    t.integer  "telefono"
    t.text     "direccion"
    t.integer  "cedula"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "cedula"
    t.integer  "telefono"
    t.string   "correo"
    t.text     "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expedientes", force: true do |t|
    t.integer  "cliente_id"
    t.string   "expediente"
    t.string   "area"
    t.string   "victima"
    t.string   "imputado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "descripcion"
    t.integer  "status"
  end

  add_index "expedientes", ["cliente_id"], name: "index_expedientes_on_cliente_id"

  create_table "tribunals", force: true do |t|
    t.string   "area"
    t.string   "instancia"
    t.string   "tipo"
    t.string   "juez"
    t.text     "direccion"
    t.integer  "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
=======
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

ActiveRecord::Schema.define(version: 20150509124734) do

  create_table "abogado_ps", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "ipsa"
    t.integer  "telefono"
    t.text     "direccion"
    t.integer  "cedula"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "cedula"
    t.integer  "telefono"
    t.string   "correo"
    t.text     "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tribunals", force: true do |t|
    t.string   "area"
    t.string   "instancia"
    t.string   "tipo"
    t.string   "juez"
    t.text     "direccion"
    t.integer  "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
>>>>>>> f0e8b263a068132c143ff12a6b436b4fe1cac441
