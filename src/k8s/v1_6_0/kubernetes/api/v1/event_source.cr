require "yaml"
require "json"

# EventSource contains information for an event.
class K8S::V1_6_0::Kubernetes::Api::V1::EventSource
  # Component from which the event is generated.
  property component : String?

  # Node name on which the event is generated.
  property host : String?

  YAML.mapping({component: {type: String, nilable: true, key: component, getter: false, setter: false},
                host:      {type: String, nilable: true, key: host, getter: false, setter: false}}, true)

  JSON.mapping({component: {type: String, nilable: true, key: component, getter: false, setter: false},
                host:      {type: String, nilable: true, key: host, getter: false, setter: false}}, true)

  def initialize(@component = nil, @host = nil)
  end
end