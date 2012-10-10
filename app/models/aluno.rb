class Aluno < ActiveRecord::Base
  attr_accessible :nome
  has_many :curso, :through => :matriculas
end
