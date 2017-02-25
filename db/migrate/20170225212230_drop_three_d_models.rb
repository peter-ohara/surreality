class DropThreeDModels < ActiveRecord::Migration[5.0]
  def change
    drop_table :three_d_models
  end
end
