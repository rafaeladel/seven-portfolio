$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "seven_portfolio/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "seven_portfolio"
  s.version     = SevenPortfolio::VERSION
  s.authors     = ["rafael"]
  s.email       = ["rafael.adel20@gmail.com"]
  s.homepage    = "https://github.com/rafaeladel/seven-portfolio.git"
  s.summary     = "Summary of SevenPortfolio."
  s.description = "Description of SevenPortfolio."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency "mysql2"
  s.add_dependency "bootstrap-sass"
  s.add_dependency "sass-rails"
  s.add_dependency "jquery-rails"
  s.add_dependency 'uglifier'
  s.add_dependency 'coffee-rails'
  s.add_dependency "kaminari"
  s.add_dependency "seven_gallery"
  s.add_dependency "auto_html"

  s.add_development_dependency "pg"
  s.add_development_dependency 'minitest-reporters'
  s.add_development_dependency 'mini_backtrace'
  s.add_development_dependency "factory_girl"

end
