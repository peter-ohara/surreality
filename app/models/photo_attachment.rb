class PhotoAttachment < ApplicationRecord
  belongs_to :listing, inverse_of: :photo_attachments
  mount_uploader :photo, PhotoUploader
end