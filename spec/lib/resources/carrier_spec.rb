# frozen_string_literal: true

require "spec_helper"
require "yar"

RSpec.describe "#carrier" do
  describe ".info" do
    subject(:resp) do
      VCR.use_cassette("carrier/schedule") do
        @yar.carrier.info code: "TK", system: "iata"
      end
    end

    it { expect(resp).to be_an Yar::Carrier }
  end
end
