class AddForeignKeyToItemsVideos < ActiveRecord::Migration
  def change
    add_foreign_key :seven_portfolio_item_videos, :seven_portfolio_items, on_delete: :cascade
  end
end
