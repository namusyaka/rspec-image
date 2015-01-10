require File.expand_path("../../lib/rspec/image", __FILE__)
require 'rspec'
require 'rspec-image'

RSpec.configure do |config|
  config.include RSpec::Image
end
