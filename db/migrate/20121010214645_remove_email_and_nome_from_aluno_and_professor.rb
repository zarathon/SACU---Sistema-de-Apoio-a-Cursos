class RemoveEmailAndNomeFromAlunoAndProfessor < ActiveRecord::Migration
  def up
    remove_column :alunos, :senha
    remove_column :alunos, :email
    remove_column :professors, :senha
    remove_column :professors, :email
  end

  def down
  end
end
