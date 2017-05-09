# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # Represents a projected volume source
  class Definitions::Kubernetes::Api::V1::ProjectedVolumeSource
    # Mode bits to use on created files by default. Must be a value between 0 and 0777. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    property default_mode : Int32?

    # list of volume projections
    property sources : Array(Kubernetes::Api::V1::VolumeProjection)

    YAML.mapping({default_mode: {type: Int32, nilable: true, key: defaultMode, getter: false, setter: false},
                  sources:      {type: Array(Kubernetes::Api::V1::VolumeProjection), nilable: false, key: sources, getter: false, setter: false}}, true)

    JSON.mapping({default_mode: {type: Int32, nilable: true, key: defaultMode, getter: false, setter: false},
                  sources:      {type: Array(Kubernetes::Api::V1::VolumeProjection), nilable: false, key: sources, getter: false, setter: false}}, true)

    def initialize(@default_mode : Int32? = nil, @sources : Array? = nil)
    end
  end
end