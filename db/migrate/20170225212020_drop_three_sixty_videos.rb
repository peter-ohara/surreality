class DropThreeSixtyVideos < ActiveRecord::Migration[5.0]
  def change
    drop_table :three_sixty_videos
  end
end
