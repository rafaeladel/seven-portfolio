# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require "minitest/reporters"
Minitest::Reporters.use!

require File.expand_path("../../test/dummy/config/environment.rb",  __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../test/dummy/db/migrate", __FILE__)]
ActiveRecord::Migrator.migrations_paths << File.expand_path('../../db/migrate', __FILE__)
require "rails/test_help"

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
  ActiveSupport::TestCase.fixtures :all
end


class ActiveSupport::TestCase
  self.set_fixture_class :seven_gallery_galleries => SevenGallery::Gallery
  self.set_fixture_class :seven_gallery_photos => SevenGallery::Photo
  self.set_fixture_class :seven_portfolio_item_videos => SevenPortfolio::ItemVideo
  self.set_fixture_class :seven_portfolio_items => SevenPortfolio::Item
end
