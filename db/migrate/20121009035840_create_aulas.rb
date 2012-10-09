class CreateAulas < ActiveRecord::Migration
  def change
    create_table :aulas do |t|
      t.string :titulo
      t.text :resumo
      t.text :conteudo
      t.references :curso

      t.timestamps
    end
    add_index :aulas, :curso_id
  end
end
