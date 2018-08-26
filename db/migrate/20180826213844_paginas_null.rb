class PaginasNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :paginas, :enunciado, false
    change_column_null :paginas, :contenido, false
    change_column_null :paginas, :icono, false
    change_column_null :paginas, :color, false
  end
end
