class Curso < ActiveRecord::Base
  belongs_to :professor
  attr_accessible :descricao, :nome, :professor_id
  has_many :aluno, :through => :matriculas
  has_many :aulas
  
  def to_s 
    self.nome
  end
  
end
