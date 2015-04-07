class CreateSevenPortfolioItems < ActiveRecord::Migration
  def change
    create_table :seven_portfolio_items do |t|

      t.timestamps null: false
    end
  end
end
