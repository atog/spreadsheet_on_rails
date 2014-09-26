$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spreadsheet_on_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spreadsheet_on_rails"
  s.version     = SpreadsheetOnRails::VERSION
  s.authors     = ["Koen Van der Auwera", "Piet Jaspers"]
  s.email       = ["koen@10to1.be", "piet@10to1.be"]
  s.homepage    = "https://github.com/10to1/spreadsheet_on_rails"
  s.summary     = "Support for XLS based views"
  s.description = "A gem to generate xls documents by using rxls templates."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.0.1"
  s.add_dependency "spreadsheet", "~> 1.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "capybara", "~> 1.1.2"
  s.add_development_dependency "shoulda"
end
