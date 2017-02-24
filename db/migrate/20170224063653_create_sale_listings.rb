class CreateSaleListings < ActiveRecord::Migration[5.0]
  def change
    create_table :sale_listings do |t|
      t.string :listing_name
      t.integer :price_cents
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :string
      t.string :city
      t.string :state
      t.string :state_code
      t.string :postal_code
      t.string :country
      t.string :country_code
      t.references :category, foreign_key: true
      t.integer :num_bedrooms
      t.integer :num_bathrooms
      t.float :floor_area
      t.float :lot_size
      t.datetime :build_date
      t.text :description
      t.references :architecture, foreign_key: true
      t.text :three_d_model
      t.text :three_sixty_video
      t.text :three_sixty_photo
      t.text :street_view
      t.integer :sold_cents

      t.timestamps
    end
  end
end
