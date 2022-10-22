# frozen_string_literal: true

module Yar
  class CopyrightResource < Resource
    def info
      Copyright.new get("copyright/").body
    end
  end
end
