class RemoveStreetViewFromSaleListings < ActiveRecord::Migration[5.0]
  def change
    remove_column :sale_listings, :street_view, :text
  end
end
