class CreateIncidences < ActiveRecord::Migration[6.0]
  def change
    create_table :incidences do |t|
      t.text :descripcion
      t.date :fecha_solucion

      t.timestamps
    end
  end
end
