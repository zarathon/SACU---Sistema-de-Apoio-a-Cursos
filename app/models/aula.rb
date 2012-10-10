class Aula < ActiveRecord::Base
  belongs_to :curso
  attr_accessible :conteudo, :resumo, :titulo, :curso_id
  validates_presence_of :conteudo, :message => "nao pode ser branco."
  validates_presence_of :titulo, :message => "nao pode ser branco."
end
