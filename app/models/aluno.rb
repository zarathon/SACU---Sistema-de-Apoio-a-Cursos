class Aluno < ActiveRecord::Base
  attr_accessible :email, :nome, :senha
  has_many :curso, :through => :matriculas
end
