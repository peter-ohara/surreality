class ThreeSixtyVideo < ApplicationRecord
  belongs_to :listing, inverse_of: :three_sixty_videos 
end
