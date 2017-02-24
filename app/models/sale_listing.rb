class SaleListing < ApplicationRecord
  belongs_to :category, inverse_of: :sale_listings
  belongs_to :architecture, inverse_of: :sale_listings

  monetize :price_cents
  monetize :sold_cents

  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
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
