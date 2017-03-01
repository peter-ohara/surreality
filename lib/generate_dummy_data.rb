require 'json'

# puts Geocoder.coordinates("East Legon")

category = Category.new
category.name = 'Single-Family Home'
category.save

architecture = Architecture.new
architecture.name = 'Contemporary'
architecture.save

File.open('lib/listings.jl').each do |line|

  value = JSON.parse(line)
  listing = SaleListing.new

  listing.listing_name = value['name']
  listing.price_cents = (value['price'] * 100).to_i

  # Generate fake coordinates
  coordinates = Geocoder.coordinates(value['location'][0].strip)
  listing.latitude = coordinates[0] + rand(0..0.027075999999999212)
  listing.longitude = coordinates[1] + rand(0..0.05433000000000002)

  listing.category = category
  listing.architecture = architecture

  listing.num_bedrooms = value['bedrooms']
  listing.num_bathrooms = value['bathrooms']

  listing.floor_area = 1656.0
  listing.lot_size = 2095.0
  listing.build_date = "2004-02-26T22:31:00.000Z"
  listing.description = value['description'].strip


  listing.three_d_model = "https://sketchfab.com/models/331119460fed4869a32f42a204c39aa2/embed"
  listing.three_sixty_video = "https://www.youtube.com/embed/G8dHyWxXwy8"
  listing.three_sixty_photo = "https://www.360cities.net/embed_iframe/black-angus-tauno-kangro-helsinki"


  puts listing.inspect
  # print "#{line_num += 1} #{line}"
end



