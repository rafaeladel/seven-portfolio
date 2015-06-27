require_dependency "seven_portfolio/application_controller"

module SevenPortfolio
  class ItemsController < ApplicationController
    include SevenPortfolio::Concerns::ItemsController
  end
end
