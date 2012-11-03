class Aula < ActiveRecord::Base
  belongs_to :curso
  attr_accessible :conteudo, :resumo, :titulo, :curso_id, :teste
  
  has_attached_file :teste
  
  validates_presence_of :conteudo, :message => "nao pode ser branco."
  validates_presence_of :titulo, :message => "nao pode ser branco."
  validates_attachment_content_type :teste, :content_type => "text/x-ruby-script"
  
end
