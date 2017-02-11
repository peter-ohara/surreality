class Listing < ApplicationRecord
  has_many :three_d_models
  has_many :three_sixty_videos
  has_many :three_sixty_photos
end
