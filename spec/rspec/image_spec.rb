require File.expand_path("../../spec_helper", __FILE__)

RSpec.describe RSpec::Image do
  it "can be included" do
    expect { include RSpec::Image }.not_to raise_error
  end

  it "should include child modules automatically" do
    module Foo; include RSpec::Image; end
    expect(Foo).to include(RSpec::Image::Matchers::IdenticalWith)
  end
end
