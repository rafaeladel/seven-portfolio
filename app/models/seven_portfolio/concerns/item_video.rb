module SevenPortfolio::Concerns::ItemVideo
  extend ActiveSupport::Concern

  included do
    belongs_to :item, class_name: 'SevenPortfolio::Item'
  end
end