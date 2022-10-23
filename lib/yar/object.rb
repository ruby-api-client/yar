# frozen_string_literal: true

require "ostruct"

module Yar
  # TODO: change to Struct
  class Object < OpenStruct
    def initialize(attributes)
      super to_ostruct(attributes)
    end

    # Convert Array or Hash to OpenStruct
    def to_ostruct(obj)
      case obj
      when Hash
        # obj.to_struct
        # rubocop:disable Style/HashTransformValues
        OpenStruct.new(obj.map {|key, val| [key, to_ostruct(val)] }.to_h)
        # rubocop:enable Style/HashTransformValues
      when Array
        obj.map {|o| to_ostruct(o) }
      else
        obj
      end
    end
  end

  # class Hash
  #   def to_struct
  #     s = Struct.new(*self.keys.map(&:to_sym))
  #     construct = map do |k,v|
  #       v.is_a?(Hash) ? v.to_struct : v.is_a?(Array) ? v.join(", ") : v
  #     end
  #     s.new(*construct)
  #   end
  # end
end
