class Paginas2Null < ActiveRecord::Migration[5.2]
  def change
    change_column_null :paginas, :titulo, false
    change_column_null :paginas, :ruta, false
    change_column_null :paginas, :subTitulo, false

    change_column_null :paginas, :enunciado, true
    change_column_null :paginas, :contenido, true
    change_column_null :paginas, :icono, true
    change_column_null :paginas, :color, true

  end
end
