# This migration comes from seven_gallery (originally 20150408131836)
class AddForeignKeyToGalleries < ActiveRecord::Migration
  def change
    add_foreign_key :seven_gallery_photos, :seven_gallery_galleries, dependent: :delete
  end
end
