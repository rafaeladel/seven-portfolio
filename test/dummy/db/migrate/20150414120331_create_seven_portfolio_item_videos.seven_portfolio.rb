# This migration comes from seven_portfolio (originally 20150406124220)
class CreateSevenPortfolioItemVideos < ActiveRecord::Migration
  def change
    create_table :seven_portfolio_item_videos do |t|
      t.string :url
      t.text :description
      t.string :title
      t.references :seven_portfolio_item, index: true
      t.timestamps null: false
    end
  end
end
