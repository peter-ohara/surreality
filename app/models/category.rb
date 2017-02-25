class Category < ApplicationRecord
  has_many :sale_listings, inverse_of: :category, dependent: :destroy

  validates :name, :description,
            presence: true
end
