class Architecture < ApplicationRecord
  has_many :sale_listings, inverse_of: :architecture, dependent: :destroy
end
