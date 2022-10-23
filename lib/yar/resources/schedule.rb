# frozen_string_literal: true

module Yar
  class ScheduleResource < Resource
    # TODO: move to Schedule.info station: -> Schedule
    def info(station:)
      Schedule.new get("schedule/?station=#{station}").body
    end

    # TODO: move to Schedule.between(from: to:) -> Schedule
    def between(from:, to:)
      Schedule.new get("search/?from=#{from}&to=#{to}").body
    end
  end
end
