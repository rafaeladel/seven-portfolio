require_dependency "seven_portfolio/application_controller"

module SevenPortfolio
  class ItemVideosController < ApplicationController
    include SevenPortfolio::Concerns::ItemVideosController
  end
end
