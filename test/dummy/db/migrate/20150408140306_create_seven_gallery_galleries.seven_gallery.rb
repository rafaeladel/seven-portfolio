# This migration comes from seven_gallery (originally 20150329122050)
class CreateSevenGalleryGalleries < ActiveRecord::Migration
  def change
    create_table :seven_gallery_galleries do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
