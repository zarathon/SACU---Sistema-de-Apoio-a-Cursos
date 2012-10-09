class Aluno < ActiveRecord::Base
  attr_accessible :email, :nome, :senha
end
