class CreateSalePhotoAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :sale_photo_attachments do |t|
      t.string :photo
      t.references :sale_listing, foreign_key: true

      t.timestamps
    end
  end
end
