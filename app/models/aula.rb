class Aula < ActiveRecord::Base
  belongs_to :curso
  attr_accessible :conteudo, :resumo, :titulo
end
