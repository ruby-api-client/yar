# frozen_string_literal: true

module Yar
  class NearestResource < Resource
    def stations(lat:, long:, distance:)
      resp = get("nearest_stations/?lat=#{lat}&lng=#{long}&distance=#{distance}")
      Collection.from_response(resp, key: "stations", type: Station)
    end

    def city(lat:, long:)
      City.new get("nearest_settlement/?lat=#{lat}&lng=#{long}").body
    end
  end
end
