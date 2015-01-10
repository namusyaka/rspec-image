require 'fileutils'

module RSpec::Image::Matchers
  module IdenticalWith
    extend RSpec::Matchers::DSL

    matcher :be_identical_with do |expected_path|
      match do |actual_path|
        @actual_path = actual_path
        @expected_path = expected_path
        FileUtils.identical?(@actual_path, @expected_path)
      end

      failure_message do
        "expected #{@actual_path} to be identical with #{@expected_path}"
      end

      failure_message_when_negated do
        "expected #{@actual_path} not to be identical with #{@expected_path}"
      end
    end

    alias be_identical_to be_identical_with
  end
end
