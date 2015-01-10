require File.expand_path("../../../spec_helper", __FILE__)

RSpec.describe RSpec::Image::Matchers::HaveWidth do
  describe "#have_width" do
    context "with valid arguments" do
      subject { File.expand_path("../../../fixtures/sample.jpg", __FILE__) }
      it { should have_width(400) }
    end

    context "with invalid arguments" do
      subject { File.expand_path("../../../fixtures/sample.jpg", __FILE__) }
      it { should_not have_width(300) }
    end
  end
end
