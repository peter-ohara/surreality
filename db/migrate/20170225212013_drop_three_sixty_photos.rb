class DropThreeSixtyPhotos < ActiveRecord::Migration[5.0]
  def change
    drop_table :three_sixty_photos
  end
end
