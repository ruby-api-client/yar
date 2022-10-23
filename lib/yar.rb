# frozen_string_literal: true

require "addressable/uri"
require "faraday"
require "yar/version"

module Yar
  autoload :Client, "yar/client"
  autoload :Object, "yar/object"
  autoload :Resource, "yar/resource"
  autoload :Collection, "yar/collection"
  autoload :Error, "yar/error"

  # objects
  autoload :Copyright, "yar/objects/copyright"
  autoload :Station, "yar/objects/station"
  autoload :Schedule, "yar/objects/schedule"
  autoload :Carrier, "yar/objects/carrier"
  autoload :City, "yar/objects/city"

  # resources
  autoload :CopyrightResource, "yar/resources/copyright"
  autoload :StationsResource, "yar/resources/stations"
  autoload :ScheduleResource, "yar/resources/schedule"
  autoload :CarrierResource, "yar/resources/carrier"
  autoload :NearestResource, "yar/resources/nearest"
end
