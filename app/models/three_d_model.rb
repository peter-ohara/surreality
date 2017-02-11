class ThreeDModel < ApplicationRecord
  belongs_to :listing, inverse_of: :three_d_models
end
