ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'capybara/rspec'
# this may need to change...
require './app'
Capybara.app = App

RSpec.configure do |config|
  config.include Capybara::DSL
end
