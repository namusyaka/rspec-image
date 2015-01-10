require 'RMagick'
require 'rspec/image/version'
require 'rspec/image/matchers'

module RSpec
  module Image
    def self.included(base)
      base.send :include, RSpec::Image::Matchers
    end
  end
end
