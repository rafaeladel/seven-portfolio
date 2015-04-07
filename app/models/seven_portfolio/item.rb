module SevenPortfolio
  class Item < ActiveRecord::Base
    has_one :item_video, class_name:'SevenPortfolio::ItemVideo', foreign_key: "seven_portfolio_item_id"
    accepts_nested_attributes_for :item_video
  end
end
