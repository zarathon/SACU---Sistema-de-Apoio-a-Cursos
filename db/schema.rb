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

ActiveRecord::Schema.define(:version => 20121010214645) do

  create_table "alunos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
