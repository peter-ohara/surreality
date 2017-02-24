require 'test_helper'

class SaleListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale_listing = sale_listings(:one)
  end

  test "should get index" do
    get sale_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_listing_url
    assert_response :success
  end

  test "should create sale_listing" do
    assert_difference('SaleListing.count') do
      post sale_listings_url, params: { sale_listing: { address: @sale_listing.address, architecture_id: @sale_listing.architecture_id, build_date: @sale_listing.build_date, category_id: @sale_listing.category_id, city: @sale_listing.city, country: @sale_listing.country, country_code: @sale_listing.country_code, description: @sale_listing.description, floor_area: @sale_listing.floor_area, latitude: @sale_listing.latitude, listing_name: @sale_listing.listing_name, longitude: @sale_listing.longitude, lot_size: @sale_listing.lot_size, num_bathrooms: @sale_listing.num_bathrooms, num_bedrooms: @sale_listing.num_bedrooms, postal_code: @sale_listing.postal_code, price_cents: @sale_listing.price_cents, sold_cents: @sale_listing.sold_cents, state: @sale_listing.state, state_code: @sale_listing.state_code, street_view: @sale_listing.street_view, string: @sale_listing.string, three_d_model: @sale_listing.three_d_model, three_sixty_photo: @sale_listing.three_sixty_photo, three_sixty_video: @sale_listing.three_sixty_video } }
    end

    assert_redirected_to sale_listing_url(SaleListing.last)
  end

  test "should show sale_listing" do
    get sale_listing_url(@sale_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_listing_url(@sale_listing)
    assert_response :success
  end

  test "should update sale_listing" do
    patch sale_listing_url(@sale_listing), params: { sale_listing: { address: @sale_listing.address, architecture_id: @sale_listing.architecture_id, build_date: @sale_listing.build_date, category_id: @sale_listing.category_id, city: @sale_listing.city, country: @sale_listing.country, country_code: @sale_listing.country_code, description: @sale_listing.description, floor_area: @sale_listing.floor_area, latitude: @sale_listing.latitude, listing_name: @sale_listing.listing_name, longitude: @sale_listing.longitude, lot_size: @sale_listing.lot_size, num_bathrooms: @sale_listing.num_bathrooms, num_bedrooms: @sale_listing.num_bedrooms, postal_code: @sale_listing.postal_code, price_cents: @sale_listing.price_cents, sold_cents: @sale_listing.sold_cents, state: @sale_listing.state, state_code: @sale_listing.state_code, street_view: @sale_listing.street_view, string: @sale_listing.string, three_d_model: @sale_listing.three_d_model, three_sixty_photo: @sale_listing.three_sixty_photo, three_sixty_video: @sale_listing.three_sixty_video } }
    assert_redirected_to sale_listing_url(@sale_listing)
  end

  test "should destroy sale_listing" do
    assert_difference('SaleListing.count', -1) do
      delete sale_listing_url(@sale_listing)
    end

    assert_redirected_to sale_listings_url
  end
end
