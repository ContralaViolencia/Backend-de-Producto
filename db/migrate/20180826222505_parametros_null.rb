class ParametrosNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :parametros, :nombre, true
    change_column_null :parametros, :pertenece, true
    change_column_null :parametros, :tipo, true
  end
end
