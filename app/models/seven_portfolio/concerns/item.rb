module SevenPortfolio::Concerns::Item
  extend ActiveSupport::Concern
  included do
    enum item_type: [:no_media, :gallery, :video]
    has_one :item_video, class_name:'SevenPortfolio::ItemVideo', foreign_key: "seven_portfolio_item_id"
    has_one :item_gallery, class_name: 'SevenGallery::Gallery', foreign_key: "seven_portfolio_item_id"
    accepts_nested_attributes_for :item_video, :item_gallery, reject_if: :all_blank

    before_save :process_type
  end

  def process_type
    if no_media?
      nil
    elsif gallery?
      build_item_gallery
    elsif video?
      build_item_video
    end
  end

  def type_content
    if no_media?
      nil
    elsif gallery?
      item_gallery
    elsif video?
      item_video
    end
  end


end