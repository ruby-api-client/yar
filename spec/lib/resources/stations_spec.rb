# frozen_string_literal: true

require "spec_helper"
require "yar"

RSpec.describe "#stations" do
  describe ".schedule" do
    subject(:resp) do
      VCR.use_cassette("stations/schedule") do
        @yar.stations.schedule station: "s9848585"
      end
    end

    it { expect(resp).to be_an Yar::Schedule }
  end

  describe ".between" do
    subject(:resp) do
      VCR.use_cassette("stations/between") do
        @yar.stations.between from: "s9848585", to: "s9848577"
      end
    end

    it { expect(resp).to be_an Yar::Schedule }
  end
end
