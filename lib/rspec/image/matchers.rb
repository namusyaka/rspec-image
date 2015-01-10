module RSpec::Image
  module Matchers
    require 'rspec/image/matchers/identical_with'
    require 'rspec/image/matchers/have_width'
    require 'rspec/image/matchers/have_height'
    require 'rspec/image/matchers/have_dimensions'

    def self.included(base)
      base.send :include, IdenticalWith
      base.send :include, HaveWidth
      base.send :include, HaveHeight
      base.send :include, HaveDimensions
    end
  end 
end
