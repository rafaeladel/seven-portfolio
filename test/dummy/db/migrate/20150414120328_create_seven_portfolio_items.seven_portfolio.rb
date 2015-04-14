# This migration comes from seven_portfolio (originally 20150406111625)
class CreateSevenPortfolioItems < ActiveRecord::Migration
  def change
    create_table :seven_portfolio_items do |t|

      t.timestamps null: false
    end
  end
end
