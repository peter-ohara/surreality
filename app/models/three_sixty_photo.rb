class ThreeSixtyPhoto < ApplicationRecord
  belongs_to :listing, inverse_of: :three_sixty_photos
end
