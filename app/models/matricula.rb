class Matricula < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :curso
  attr_accessible :nota, :aluno_id, :curso_id
end
