require "yaml"
require "json"

# ComponentStatus (and ComponentStatusList) holds the cluster validation info.
class K8S::V1_6_1::Kubernetes::Api::V1::ComponentStatus
  # List of component conditions observed
  property conditions : Array(::K8S::V1_6_1::Kubernetes::Api::V1::ComponentCondition)?

  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  YAML.mapping({
    api_version: {type: String, default: "ComponentStatus", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    conditions:  {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ComponentCondition), nilable: true, key: conditions, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ComponentStatus", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    conditions:  {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ComponentCondition), nilable: true, key: conditions, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@conditions = nil, @metadata = nil)
    @api_version = "ComponentStatus"
    @kind = "v1"
  end

  # read the specified ComponentStatus
  def self.get(name : String)
    Kubernetes.client.get
  end
end