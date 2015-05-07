require 'jquery-rails'
require 'bootstrap-sass'
require 'minitest/autorun'
require 'mini_backtrace'
require 'seven_gallery'
require 'auto_html'
require 'factory_girl'

module SevenPortfolio
  class Engine < ::Rails::Engine
    isolate_namespace SevenPortfolio
  end
end
