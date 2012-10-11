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

ActiveRecord::Schema.define(:version => 20121011041124) do

  create_table "alunos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "alunos", ["email"], :name => "index_alunos_on_email", :unique => true
  add_index "alunos", ["reset_password_token"], :name => "index_alunos_on_reset_password_token", :unique => true

  create_table "aulas", :force => true do |t|
    t.string   "titulo"
    t.text     "resumo"
    t.text     "conteudo"
    t.integer  "curso_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "aulas", ["curso_id"], :name => "index_aulas_on_curso_id"

  create_table "cursos", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.integer  "professor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "cursos", ["professor_id"], :name => "index_cursos_on_professor_id"

  create_table "matriculas", :force => true do |t|
    t.integer  "aluno_id"
    t.integer  "curso_id"
    t.float    "nota"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "matriculas", ["aluno_id"], :name => "index_matriculas_on_aluno_id"
  add_index "matriculas", ["curso_id"], :name => "index_matriculas_on_curso_id"

  create_table "professors", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
