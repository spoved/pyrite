# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # Event represents a single event to a watched resource.
  class Definitions::Versioned::Event
    # Object is:
    #  * If Type is Added or Modified: the new state of the object.
    #  * If Type is Deleted: the state of the object immediately before deletion.
    #  * If Type is Error: *api.Status is recommended; other types may make sense
    #    depending on context.
    property object : Runtime::RawExtension

    property type : String

    YAML.mapping({object: {type: Runtime::RawExtension, nilable: false, key: object, getter: false, setter: false},
                  type:   {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    JSON.mapping({object: {type: Runtime::RawExtension, nilable: false, key: object, getter: false, setter: false},
                  type:   {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    def initialize(@object : Runtime::RawExtension = nil, @type : String? = nil)
    end
  end
end