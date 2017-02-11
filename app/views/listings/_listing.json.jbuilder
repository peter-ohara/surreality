json.extract! listing, :id, :listing_name, :summary, :address, :latitude, :longitude, :price, :accomodates, :active, :created_at, :updated_at
json.url listing_url(listing, format: :json)