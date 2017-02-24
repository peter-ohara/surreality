class SaleListingsController < ApplicationController
  before_action :set_sale_listing, only: [:show, :edit, :update, :destroy]

  # GET /sale_listings
  # GET /sale_listings.json
  def index
    @sale_listings = SaleListing.all
  end

  # GET /sale_listings/1
  # GET /sale_listings/1.json
  def show
  end

  # GET /sale_listings/new
  def new
    @sale_listing = SaleListing.new
  end

  # GET /sale_listings/1/edit
  def edit
  end

  # POST /sale_listings
  # POST /sale_listings.json
  def create
    @sale_listing = SaleListing.new(sale_listing_params)

    respond_to do |format|
      if @sale_listing.save
        format.html { redirect_to @sale_listing, notice: 'Sale listing was successfully created.' }
        format.json { render :show, status: :created, location: @sale_listing }
      else
        format.html { render :new }
        format.json { render json: @sale_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_listings/1
  # PATCH/PUT /sale_listings/1.json
  def update
    respond_to do |format|
      if @sale_listing.update(sale_listing_params)
        format.html { redirect_to @sale_listing, notice: 'Sale listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale_listing }
      else
        format.html { render :edit }
        format.json { render json: @sale_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_listings/1
  # DELETE /sale_listings/1.json
  def destroy
    @sale_listing.destroy
    respond_to do |format|
      format.html { redirect_to sale_listings_url, notice: 'Sale listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_listing
      @sale_listing = SaleListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_listing_params
      params.require(:sale_listing).permit(:listing_name, :price_cents, :latitude, :longitude, :address, :string, :city, :state, :state_code, :postal_code, :country, :country_code, :category_id, :num_bedrooms, :num_bathrooms, :floor_area, :lot_size, :build_date, :description, :architecture_id, :three_d_model, :three_sixty_video, :three_sixty_photo, :street_view, :sold_cents)
    end
end
