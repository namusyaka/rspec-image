module RSpec::Image::Matchers
  module HaveHeight
    extend RSpec::Matchers::DSL

    matcher :have_height do |height|
      match do |path|
        image = Magick::Image.read(path).first
        @expected_height = height
        @actual_height   = image.rows
        @expected_height == @actual_height
      end

      failure_message do |actual|
        "expected #{actual} to have height(#{@expected_height}), got (height: #{@actual_height})"
      end

      failure_message_when_negated do |actual|
        "expected #{actual} not to have height(#{@expected_height}), got (height: #{@actual_height})"
      end
    end
  end
end
