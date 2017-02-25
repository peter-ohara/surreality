class SalePhotoAttachment < ApplicationRecord
  belongs_to :sale_listing, inverse_of: :sale_photo_attachments
  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true
end
