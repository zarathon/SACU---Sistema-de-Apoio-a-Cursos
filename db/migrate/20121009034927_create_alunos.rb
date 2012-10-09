class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
