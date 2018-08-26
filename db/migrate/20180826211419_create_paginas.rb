class CreatePaginas < ActiveRecord::Migration[5.2]
  def change
    create_table :paginas do |t|
      t.string :titulo
      t.string :ruta
      t.string :subTitulo
      t.string :enunciado
      t.string :contenido
      t.string :icono
      t.string :color
      t.references :parametros, foreign_key: true

      t.timestamps
    end
  end
end
