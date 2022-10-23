# frozen_string_literal: true

module Yar
  class CarrierResource < Resource
    def info(code:, system: "yandex")
      Carrier.new get("carrier/?code=#{code}&system=#{system}").body
    end
  end
end
