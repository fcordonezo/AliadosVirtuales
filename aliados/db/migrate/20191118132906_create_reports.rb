class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.text :descipcion
      t.date :fecha_solucion

      t.timestamps
    end
  end
end
