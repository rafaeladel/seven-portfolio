# This migration comes from seven_gallery (originally 20150329123256)
class CreateSevenGalleryPhotos < ActiveRecord::Migration
  def change
    create_table :seven_gallery_photos do |t|
      t.string :caption
      t.string :image
      t.references :seven_gallery_gallery, index: true

      t.timestamps null: false
    end
  end
end
