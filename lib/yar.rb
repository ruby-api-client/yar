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

  autoload :Copyright, "yar/objects/copyright"
  autoload :CopyrightResource, "yar/resources/copyright"

  autoload :Station, "yar/objects/station"
  autoload :Schedule, "yar/objects/schedule"
  autoload :Region, "yar/objects/region"
  autoload :StationsResource, "yar/resources/stations"
end
