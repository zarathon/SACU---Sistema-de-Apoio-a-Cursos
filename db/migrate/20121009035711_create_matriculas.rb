class CreateMatriculas < ActiveRecord::Migration
  def change
    create_table :matriculas do |t|
      t.references :aluno
      t.references :curso
      t.float :nota

      t.timestamps
    end
    add_index :matriculas, :aluno_id
    add_index :matriculas, :curso_id
  end
end
