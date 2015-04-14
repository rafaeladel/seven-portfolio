class AddForeignKeyToItems < ActiveRecord::Migration
  def change
    add_foreign_key :seven_gallery_galleries, :seven_portfolio_items, on_delete: :cascade
  end
end
