class DropModel3D < ActiveRecord::Migration[5.0]
  def change
    drop_table :model3_ds
  end
end
