class Listing < ApplicationRecord
  has_many :three_d_models, inverse_of: :listing, dependent: :destroy
  has_many :three_sixty_videos, inverse_of: :listing, dependent: :destroy
  has_many :three_sixty_photos, inverse_of: :listing, dependent: :destroy
  has_many :photo_attachments, inverse_of: :listing, dependent: :destroy

  reverse_geocoded_by :latitude, :longitude do |obj, results|
    if geo = results.first
      obj.city    = geo.city
      obj.address = geo.address
      obj.city = geo.city
      obj.state = geo.state
      obj.state_code = geo.state_code
      obj.postal_code = geo.postal_code
      obj.country = geo.country
      obj.country_code = geo.country_code
    end
  end

  # auto-fetch address if latitude or longitude
  # are present and have changed
  after_validation :reverse_geocode, if: ->(obj){
    if obj.address.blank?
      (obj.latitude.present? and obj.latitude_changed?) or
      (obj.longitude.present? and obj.longitude_changed?)
    end
  }

end
