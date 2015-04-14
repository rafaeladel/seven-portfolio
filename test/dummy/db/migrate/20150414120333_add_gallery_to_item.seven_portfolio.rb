# This migration comes from seven_portfolio (originally 20150408143734)
class AddGalleryToItem < ActiveRecord::Migration
  def change
    add_reference :seven_gallery_galleries, :seven_portfolio_item, index: true
  end
end
