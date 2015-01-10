module RSpec::Image::Matchers
  module HaveWidth
    extend RSpec::Matchers::DSL

    matcher :have_width do |width|
      match do |path|
        image = Magick::Image.read(path).first
        @expected_width = width
        @actual_width   = image.columns
        @expected_width == @actual_width
      end

      failure_message do |actual|
        "expected #{actual} to have width(#{@expected_width}), got (width: #{@actual_width})"
      end

      failure_message_when_negated do |actual|
        "expected #{actual} not to have width(#{@expected_width}), got (width: #{@actual_width})"
      end
    end
  end
end
