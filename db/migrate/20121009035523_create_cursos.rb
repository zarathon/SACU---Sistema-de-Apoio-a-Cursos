class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome
      t.text :descricao
      t.references :professor

      t.timestamps
    end
    add_index :cursos, :professor_id
  end
end
