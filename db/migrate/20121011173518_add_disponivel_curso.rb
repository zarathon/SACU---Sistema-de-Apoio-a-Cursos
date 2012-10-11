class AddDisponivelCurso < ActiveRecord::Migration
  def up
    add_column :cursos, :disponivel, :boolean
  end

  def down
  end
end