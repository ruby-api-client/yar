# frozen_string_literal: true

require "spec_helper"
require "yar"

RSpec.describe "#stations" do
  # TODO: vcr cassettee size over 30 mb
  # describe ".list" do
  #   subject(:resp) do
  #     VCR.use_cassette("stations/list") do
  #       @yar.stations.list
  #     end
  #   end

  #   it { expect(resp).to be_an Yar::Object }
  # end

  describe ".nearest" do
    subject(:resp) do
      VCR.use_cassette("stations/nearest") do
        @yar.stations.nearest lat: 55.733970, long: 37.586780, distance: 10
      end
    end

    it { expect(resp).to be_an Yar::Collection }
    it { expect(resp.data.first).to be_an Yar::Station }
  end

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
