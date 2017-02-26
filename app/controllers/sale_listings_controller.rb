class SaleListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /sale_listings
  # GET /sale_listings.json
  def index
    @listings = SaleListing.all
  end

  def search
    address = params[:location]

    @listings = SaleListing.near(address)
    @zoom = 10

    if @listings.empty?
      @map_center = Geocoder.coordinates(address)
    else
      @map_center = Geocoder::Calculations.geographic_center(@listings)
      @west_bounds = @listings.minimum(:longitude)
      @east_bounds = @listings.maximum(:longitude)
    end
  end

  # GET /sale_listings/1
  # GET /sale_listings/1.json
  def show
    @listings = SaleListing.near([@listing.latitude, @listing.longitude], 20)
    @listings = @listings.to_a - [@listing]
  end

  # GET /sale_listings/new
  def new
    @listing = SaleListing.new
  end

  # GET /sale_listings/1/edit
  def edit
  end

  # POST /sale_listings
  # POST /sale_listings.json
  def create
    @listing = SaleListing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Sale listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_listings/1
  # PATCH/PUT /sale_listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Sale listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_listings/1
  # DELETE /sale_listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to sale_listings_url, notice: 'Sale listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = SaleListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:sale_listing).permit(:listing_name, :price_cents, :latitude, :longitude, :address, :string, :city, :state, :state_code, :postal_code, :country, :country_code, :category_id, :num_bedrooms, :num_bathrooms, :floor_area, :lot_size, :build_date, :description, :architecture_id, :three_d_model, :three_sixty_video, :three_sixty_photo, :street_view, :sold_cents)
    end
end
