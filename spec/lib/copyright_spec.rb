# frozen_string_literal: true

require "spec_helper"
require "yar"

RSpec.describe "#copyright" do
  describe ".info" do
    subject(:resp) do
      VCR.use_cassette("copyright/info") do
        @yar.copyright.info
      end
    end

    it { expect(resp).to be_an Yar::Copyright }
  end
end
