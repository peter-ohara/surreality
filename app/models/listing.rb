class Listing < ApplicationRecord
  has_many :three_d_models, inverse_of: :listing, dependent: :destroy
  has_many :three_sixty_videos, inverse_of: :listing, dependent: :destroy
  has_many :three_sixty_photos, inverse_of: :listing, dependent: :destroy
  has_many :photo_attachments, inverse_of: :listing, dependent: :destroy
end
