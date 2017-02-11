class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :listing_name
      t.text :summary
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :price
      t.integer :accomodates
      t.boolean :active

      t.timestamps
    end
  end
end
