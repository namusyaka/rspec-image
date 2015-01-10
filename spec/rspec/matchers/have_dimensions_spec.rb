require File.expand_path("../../../spec_helper", __FILE__)

RSpec.describe RSpec::Image::Matchers::HaveDimensions do
  describe "#have_dimensions" do
    context "with valid arguments" do
      subject { File.expand_path("../../../fixtures/sample.jpg", __FILE__) }
      it { should have_dimensions(400, 300) }
    end

    context "with invalid arguments" do
      subject { File.expand_path("../../../fixtures/sample.jpg", __FILE__) }
      it { should_not have_dimensions(300, 300) }
    end
  end
end
