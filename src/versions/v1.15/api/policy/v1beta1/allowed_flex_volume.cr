# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # AllowedFlexVolume represents a single Flexvolume that is allowed to be used.
  class Api::Policy::V1beta1::AllowedFlexVolume
    # driver is the name of the Flexvolume driver.
    property driver : String

    ::YAML.mapping({
      driver: {type: String, nilable: false, key: "driver", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      driver: {type: String, nilable: false, key: "driver", getter: false, setter: false},
    }, true)

    def initialize(*, @driver : String)
    end
  end
end
