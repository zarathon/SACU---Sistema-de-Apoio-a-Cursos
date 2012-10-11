class Curso < ActiveRecord::Base
  belongs_to :professor
  attr_accessible :descricao, :nome, :professor_id, :disponivel
  has_many :aluno, :through => :matriculas
  has_many :aulas
  
  validates_presence_of :professor_id, :message => "nao pode ficar em branco."
  validates_presence_of :nome, :message => "nao pode ficar em branco."
  validates_presence_of :descricao, :message => "nao pode ficar em branco."
  
  def to_s 
    self.nome
  end
  
end
