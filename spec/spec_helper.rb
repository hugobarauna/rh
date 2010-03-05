# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path(File.join(File.dirname(__FILE__),'..','config','environment'))
require 'spec/autorun'
require 'spec/rails'
require 'remarkable_rails'
require 'validates_timeliness/matcher'

require 'capybara/rails'
Capybara.default_selector = :css

require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

module Spec::Example::ExampleGroupMethods
  alias :scenario  :example
  alias :xscenario :xexample
end

module Spec::DSL::Main
  alias :story :describe
end


# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir[File.expand_path(File.join(File.dirname(__FILE__),'support','**','*.rb'))].each {|f| require f}

Spec::Runner.configure do |config|
  config.include(Capybara, :type => :integration)

  # Disable transactional fixtures as we are using culerity in some tests
  config.use_transactional_fixtures = false

  # Setup database cleaner
  config.before(:each) do
    DatabaseCleaner.start
  end

  # Clean database with database cleaner
  config.after(:each) do
    DatabaseCleaner.clean
  end
end
