module SevenPortfolio::Concerns::Item
  extend ActiveSupport::Concern
  included do
    enum item_type: [:no_media, :gallery, :video]
    has_one :item_video, class_name:'SevenPortfolio::ItemVideo', foreign_key: "seven_portfolio_item_id"
    has_one :item_gallery, class_name: 'SevenGallery::Gallery', foreign_key: "seven_portfolio_item_id"
    accepts_nested_attributes_for :item_video, :item_gallery, reject_if: :no_media?
    
    before_create :set_gallery_name, if: :gallery?

  end

  def set_gallery_name
    build_item_gallery(title: "#{title}_gallery")
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
