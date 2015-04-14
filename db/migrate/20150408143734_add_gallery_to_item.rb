class AddGalleryToItem < ActiveRecord::Migration
  def change
    add_reference :seven_gallery_galleries, :seven_portfolio_item, index: true
  end
end
