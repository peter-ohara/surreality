class CreateThreeSixtyPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :three_sixty_photos do |t|
      t.text :embed_link
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
