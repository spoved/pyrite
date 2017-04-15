require "yaml"
require "json"

class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Specification of the desired behavior for this NetworkPolicy.
  property spec : ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec

  YAML.mapping({
    api_version: {type: String, default: "NetworkPolicy", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "NetworkPolicy", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec, nilable: true, key: spec, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil)
    @api_version = "NetworkPolicy"
    @kind = "v1beta1"
  end

  # list or watch objects of kind NetworkPolicy
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a NetworkPolicy
  def self.create(metadata = nil, spec = nil, namespace : String = "default")
  end

  # read the specified NetworkPolicy
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end