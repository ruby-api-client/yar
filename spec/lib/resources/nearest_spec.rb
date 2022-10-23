# frozen_string_literal: true

require "spec_helper"
require "yar"

RSpec.describe "#nearest" do
  let(:lat)  { 55.733970 }
  let(:long) { 37.586780 }

  describe ".stations" do
    subject(:resp) do
      VCR.use_cassette("nearest/stations") do
        @yar.nearest.stations lat: 55.733970, long: 37.586780, distance: 10
      end
    end

    it { expect(resp).to be_an Yar::Collection }
    it { expect(resp.data.first).to be_an Yar::Station }
  end

  describe ".city" do
    subject(:resp) do
      VCR.use_cassette("nearest/city") do
        @yar.nearest.city(lat: lat, long: long)
      end
    end

    it { expect(resp).to be_an Yar::City }
  end
end
