require 'jquery-rails'
require 'bootstrap-sass'
require 'minitest/autorun'
require 'mini_backtrace'

module SevenPortfolio
  class Engine < ::Rails::Engine
    isolate_namespace SevenPortfolio
  end
end
