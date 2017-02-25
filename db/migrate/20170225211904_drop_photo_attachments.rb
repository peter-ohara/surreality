class DropPhotoAttachments < ActiveRecord::Migration[5.0]
  def change
    drop_table :photo_attachments
  end
end
