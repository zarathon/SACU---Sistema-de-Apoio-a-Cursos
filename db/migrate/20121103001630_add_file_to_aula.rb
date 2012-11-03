class AddFileToAula < ActiveRecord::Migration
  def self.up
    add_attachment :aulas, :teste
  end
  
  def self.down
    remove_attachment :aulas, :teste
  end
end
