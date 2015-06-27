module SevenPortfolio::Concerns::Item
  extend ActiveSupport::Concern
  included do
    has_one :item_video, class_name:'SevenPortfolio::ItemVideo', foreign_key: "seven_portfolio_item_id"
    has_one :item_gallery, class_name: 'SevenGallery::Gallery', foreign_key: "seven_portfolio_item_id"
    accepts_nested_attributes_for :item_video, :item_gallery

    before_save :process_type
  end

  def process_type
    self.build_item_video if self.item_type == 0
    self.build_item_gallery if self.item_type == 1
  end

  def type_content
    self.item_gallery if self.item_type == 0
    self.item_video if self.item_type == 1
  end

end