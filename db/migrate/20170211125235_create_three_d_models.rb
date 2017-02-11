class CreateThreeDModels < ActiveRecord::Migration[5.0]
  def change
    create_table :three_d_models do |t|
      t.text :embed_link
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
