require "yaml"
require "json"

# Selects a key from a ConfigMap.
class K8S::V1_6_0::Kubernetes::Api::V1::ConfigMapKeySelector
  # The key to select.
  property key : String

  # Name of the referent.More info: http://kubernetes.io/docs/user-guide/identifiers#names
  property name : String?

  # Specify whether the ConfigMap or it's key must be defined
  property optional : Bool?

  YAML.mapping({key:      {type: String, nilable: false, key: key, getter: false, setter: false},
                name:     {type: String, nilable: true, key: name, getter: false, setter: false},
                optional: {type: Bool, nilable: true, key: optional, getter: false, setter: false}}, true)

  JSON.mapping({key:      {type: String, nilable: false, key: key, getter: false, setter: false},
                name:     {type: String, nilable: true, key: name, getter: false, setter: false},
                optional: {type: Bool, nilable: true, key: optional, getter: false, setter: false}}, true)

  def initialize(@key, @name = nil, @optional = nil)
  end
end