# frozen_string_literal: true

require "spec_helper"
require "yar"

RSpec.describe "#schedule" do
  describe ".info" do
    subject(:resp) do
      VCR.use_cassette("schedule/schedule") do
        @yar.schedule.info station: "s9848585"
      end
    end

    it { expect(resp).to be_an Yar::Schedule }
  end

  describe ".between" do
    subject(:resp) do
      VCR.use_cassette("schedule/between") do
        @yar.schedule.between from: "s9848585", to: "s9848577"
      end
    end

    it { expect(resp).to be_an Yar::Schedule }
  end
end
