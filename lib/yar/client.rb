# frozen_string_literal: true

module Yar
  class Client
    BASE_URL = "https://api.rasp.yandex.net/v3.0/"

    attr_reader :token, :adapter, :format

    # new client
    def initialize(token:, adapter: Faraday.default_adapter, stubs: nil, format: "json")
      @token = token
      @adapter = adapter
      @stubs = stubs
      @format = format
    end

    def copyright
      CopyrightResource.new(self)
    end

    def stations
      StationsResource.new(self)
    end

    def carrier
      CarrierResource.new(self)
    end

    def nearest
      NearestResource.new(self)
    end

    def schedule
      ScheduleResource.new(self)
    end

    def connection
      @connection ||= Faraday.new(BASE_URL) do |conn|
        conn.request :authorization, nil, token
        conn.request :json
        conn.request :url_encoded

        # conn.params[:format] = @format

        conn.response :json, content_type: "application/json"
        conn.response :xml, content_type: "application/xml" if @format == "xml"

        conn.adapter adapter, @stubs
      end
    end
  end
end
