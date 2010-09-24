require 'rspec'
require 'active_support'
require 'active_support/all'

$LOAD_PATH.unshift "../lib"
require "relevant/widget"
require "relevant/twitter"

RSpec.configure do |config|
  config.color_enabled = true
  config.mock_with :mocha

  config.formatter = :progress
  config.color_enabled = true
  config.filter_run :focused => true
  config.run_all_when_everything_filtered = true
  config.alias_example_to :fit, :focused => true
end