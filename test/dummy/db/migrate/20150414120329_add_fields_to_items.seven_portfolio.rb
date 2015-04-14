# This migration comes from seven_portfolio (originally 20150406112130)
class AddFieldsToItems < ActiveRecord::Migration
  def change
    change_table :seven_portfolio_items do |t|
      t.text :description
      t.date :finished_at
      t.boolean :is_featured, default: false
    end
  end
end
