# This migration comes from seven_gallery (originally 20150331182708)
class ChangeSevenGalleryPhotos < ActiveRecord::Migration
  def change
    change_column_default :seven_gallery_photos, :position, 0
  end
end
