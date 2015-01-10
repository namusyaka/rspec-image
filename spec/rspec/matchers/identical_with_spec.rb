require File.expand_path("../../../spec_helper", __FILE__)

RSpec.describe RSpec::Image::Matchers::IdenticalWith do
  describe "#be_identical_with" do
    subject { File.expand_path("../../../fixtures/sample.jpg", __FILE__) }
    context "with valid arguments" do
      let(:target) { File.expand_path("../../../fixtures/sample.jpg", __FILE__) }
      it { should be_identical_with(target) }
      it { should be_identical_to(target) }
    end

    context "with invalid arguments" do
      let(:target) { File.expand_path("../../../fixtures/black_sample.jpg", __FILE__) }
      it { should_not be_identical_with(target) }
      it { should_not be_identical_to(target) }
    end
  end
end
