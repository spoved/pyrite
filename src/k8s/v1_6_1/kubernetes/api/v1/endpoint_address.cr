require "yaml"
require "json"

# EndpointAddress is a tuple that describes single IP address.
class K8S::V1_6_1::Kubernetes::Api::V1::EndpointAddress
  # The Hostname of this endpoint
  property hostname : String?

  # The IP of this endpoint.May not be loopback (127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24).IPv6 is also accepted but not fully supported on all platforms.Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.
  property ip : String

  # Optional: Node hosting this endpoint.This can be used to determine endpoints local to a node.
  property node_name : String?

  # Reference to object providing the endpoint.
  property target_ref : ::K8S::V1_6_1::Kubernetes::Api::V1::ObjectReference

  YAML.mapping({hostname:   {type: String, nilable: true, key: hostname, getter: false, setter: false},
                ip:         {type: String, nilable: false, key: ip, getter: false, setter: false},
                node_name:  {type: String, nilable: true, key: nodeName, getter: false, setter: false},
                target_ref: {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ObjectReference, nilable: true, key: targetRef, getter: false, setter: false}}, true)

  JSON.mapping({hostname:   {type: String, nilable: true, key: hostname, getter: false, setter: false},
                ip:         {type: String, nilable: false, key: ip, getter: false, setter: false},
                node_name:  {type: String, nilable: true, key: nodeName, getter: false, setter: false},
                target_ref: {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ObjectReference, nilable: true, key: targetRef, getter: false, setter: false}}, true)

  def initialize(@ip, @hostname = nil, @node_name = nil, @target_ref = nil)
  end
end