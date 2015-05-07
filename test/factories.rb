FactoryGirl.define do
  factory :item_one, class: SevenPortfolio::Item do
    description "This is desc"
    item_type 0
    association :item_gallery, factory: :gallery_one, strategy: :build
  end

  factory :gallery_one, class: SevenGallery::Gallery do
    title "seven_gallery_gallery_one_title"
  end
end