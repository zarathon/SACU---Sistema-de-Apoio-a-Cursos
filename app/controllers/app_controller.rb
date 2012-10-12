class AppController < ApplicationController
  
  before_filter :authenticate_professor!, :only => [:professor]
  
  def index
    @cursos = Curso.order("nome").find_all_by_disponivel(true)
  end
  
  def professor
    @cursos = Curso.order("nome").find_all_by_professor_id(current_professor)
  end
  
  def matricula
    @curso = Curso.find(params[:id])
    @alunos_matriculados = @curso.alunos.order("nome")
    @alunos = Aluno.all
    
    @alunos_matriculados.each do |aluno|
      if @alunos.include?(aluno)
        @alunos.delete(aluno)
      end
    end
    
    @matricula = Matricula.new
  end
end
