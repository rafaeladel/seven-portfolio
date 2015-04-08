class SevenGallery::Gallery < ActiveRecord::Base
  include SevenGallery::Concerns::Gallery
  belongs_to :item, :class_name => 'SevenPortfolio::Item'
end