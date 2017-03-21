class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.date :fecha
      t.string :nemo
      t.integer :volumen_total, :limit => 10
      t.decimal :rotacion_mensual
      t.string :nuemro_ops

      t.timestamps null: false
    end
  end
end
