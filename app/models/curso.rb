class Curso < ActiveRecord::Base
  belongs_to :professor
  attr_accessible :descricao, :nome
end
