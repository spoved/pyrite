require "yaml"
require "json"

# list of horizontal pod autoscaler objects.
class K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerList
  # list of horizontal pod autoscaler objects.
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler)

  # Standard list metadata.
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "HorizontalPodAutoscalerList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "HorizontalPodAutoscalerList"
    @kind = "v1"
  end

  # list or watch objects of kind HorizontalPodAutoscaler
  def self.get
    Kubernetes.client.get
  end

  # list or watch objects of kind HorizontalPodAutoscaler
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a HorizontalPodAutoscaler
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end
end