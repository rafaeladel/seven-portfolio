class AddItemTypeToItems < ActiveRecord::Migration
  def change
    add_column :seven_portfolio_items, :item_type, :integer
  end
end
