require File.expand_path("../../../spec_helper", __FILE__)

RSpec.describe RSpec::Image::Matchers::HaveHeight do
  describe "#have_height" do
    context "with valid arguments" do
      subject { File.expand_path("../../../fixtures/sample.jpg", __FILE__) }
      it { should have_height(300) }
    end

    context "with invalid arguments" do
      subject { File.expand_path("../../../fixtures/sample.jpg", __FILE__) }
      it { should_not have_height(400) }
    end
  end
end
