# frozen_string_literal: true

RSpec.describe Yar::Client do
  subject(:client) { described_class.new token: "TOKEN" }

  context "with default format" do
    it { expect(client).to be_an Yar::Client }
    it { expect(client.format).to eq "json" }
  end

  context "with format XML" do
    subject(:client) { described_class.new token: "TOKEN", format: "xml" }
    it { expect(client.format).to eq "xml" }
  end

  describe "VERSION" do
    it { expect(Yar::VERSION).to eq "1.0.3" }
  end
end
