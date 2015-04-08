SevenPortfolio::Engine.routes.draw do
  resources :item_videos
  resources :items

  mount SevenGallery::Engine, at: "/"
end
