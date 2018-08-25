class CreateParametros < ActiveRecord::Migration[5.2]
  def change
    create_table :parametros do |t|
      t.string :tipo
      t.string :nombre
      t.string :pertenece
      t.boolean :activo

      t.timestamps
    end
  end
end
