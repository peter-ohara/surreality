class RemoveStringFromSaleListings < ActiveRecord::Migration[5.0]
  def change
    remove_column :sale_listings, :string, :string
  end
end
