# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/image/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-image"
  spec.version       = RSpec::Image::VERSION
  spec.authors       = ["namusyaka"]
  spec.email         = ["namusyaka@gmail.com"]
  spec.summary       = %q{Provides some matchers for testing your image file.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/namusyaka/rspec-image"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rmagick"
  spec.add_runtime_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
