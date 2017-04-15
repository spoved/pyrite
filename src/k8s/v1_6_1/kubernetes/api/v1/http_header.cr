require "yaml"
require "json"

# HTTPHeader describes a custom header to be used in HTTP probes
class K8S::V1_6_1::Kubernetes::Api::V1::HTTPHeader
  # The header field name
  property name : String

  # The header field value
  property value : String

  YAML.mapping({name:  {type: String, nilable: false, key: name, getter: false, setter: false},
                value: {type: String, nilable: false, key: value, getter: false, setter: false}}, true)

  JSON.mapping({name:  {type: String, nilable: false, key: name, getter: false, setter: false},
                value: {type: String, nilable: false, key: value, getter: false, setter: false}}, true)

  def initialize(@name, @value)
  end
end