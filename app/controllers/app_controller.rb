class AppController < ApplicationController
  
  before_filter :authenticate_professor!, :only => [:professor]
  
  def index
    @cursos = Curso.order("nome").find_all_by_disponivel(true)
  end
  
  def professor
    @cursos = Curso.order("nome").find_all_by_professor_id(current_professor)
  end
end
