module SevenPortfolio
  class Item < ActiveRecord::Base
    include SevenPortfolio::Concerns::Item
  end
end
