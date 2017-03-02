class SalePhotoAttachment < ApplicationRecord
  belongs_to :sale_listing, inverse_of: :sale_photo_attachments
  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true

  def before_import_save(record)
    self.remote_photo_url = record[:photo]['photo']['url'] if record[:photo].present?
  end
end
