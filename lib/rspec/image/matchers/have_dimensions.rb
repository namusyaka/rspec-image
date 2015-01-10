module RSpec::Image::Matchers
  module HaveDimensions
    extend RSpec::Matchers::DSL

    matcher :have_dimensions do |*expected|
      match do |path|
        image = Magick::Image.read(path).first
        @expected_size = expected
        @actual_size   = [image.columns, image.rows]
        @expected_size == @actual_size
      end

      failure_message do |actual|
        "expected #{actual} to have an size (width: #{@expected_size[0]}, height: #{@expected_size[1]})"\
        ", got (width: #{@actual_size[0]}, height: #{@actual_size[1]})"
      end

      failure_message_when_negated do |actual|
        "expected #{actual} not to have an size (width: #{@expected_size[0]}, height: #{@expected_size[1]})"\
        ", got (width: #{@actual_size[0]}, height: #{@actual_size[1]})"
      end
    end
  end
end
