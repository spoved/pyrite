require "yaml"
require "json"

# PodDisruptionBudgetList is a collection of PodDisruptionBudgets.
class K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetList
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget)

  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "PodDisruptionBudgetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "PodDisruptionBudgetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "PodDisruptionBudgetList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind PodDisruptionBudget
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a PodDisruptionBudget
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # list or watch objects of kind PodDisruptionBudget
  def self.get
    Kubernetes.client.get
  end
end