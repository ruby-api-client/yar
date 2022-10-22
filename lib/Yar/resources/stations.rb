# frozen_string_literal: true

module Yar
  class StationsResource < Resource
    # def list
    #   resp = get("stations_list/")
    #   Collection.from_response(resp, key: "countries", type: Region)
    # end
    def list
      Object.new get("stations_list/").body
    end

    def nearest(lat:, long:, distance:)
      resp = get("nearest_stations/?lat=#{lat}&lng=#{long}&distance=#{distance}")
      Collection.from_response(resp, key: "stations", type: Station)
    end

    # TODO: move to Schedule.info station: -> Schedule
    def schedule(station:)
      Schedule.new get("schedule/?station=#{station}").body
    end

    # TODO: move to Schedule.between(from: to:) -> Schedule
    def between(from:, to:)
      Schedule.new get("search/?from=#{from}&to=#{to}").body
    end
  end
end
