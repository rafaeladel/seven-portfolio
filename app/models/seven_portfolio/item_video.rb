module SevenPortfolio
  class ItemVideo < ActiveRecord::Base
    belongs_to :item, class_name: 'SevenPortfolio::Item'
  end
end
