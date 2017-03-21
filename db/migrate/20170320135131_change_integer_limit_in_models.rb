class ChangeIntegerLimitInModels < ActiveRecord::Migration
  def change
    change_column :models, :volumen_total, :integer, limit=> 100
  end
end
