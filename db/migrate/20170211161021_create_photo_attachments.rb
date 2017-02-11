class CreatePhotoAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_attachments do |t|
      t.string :photo
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
