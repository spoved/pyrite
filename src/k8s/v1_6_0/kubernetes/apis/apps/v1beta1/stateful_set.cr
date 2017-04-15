require "yaml"
require "json"

# StatefulSet represents a set of pods with consistent identities.Identities are defined as:
#  - Network: A single stable DNS and hostname.
#  - Storage: As many VolumeClaims as requested.
# The StatefulSet guarantees that a given network identity will always map to the same storage identity.
class K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSet
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the desired identities of pods in this set.
  property spec : ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec

  # Status is the current status of Pods in this StatefulSet.This data may be out of date by some window of time.
  property status : ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus

  YAML.mapping({
    api_version: {type: String, default: "StatefulSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "StatefulSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "StatefulSet"
    @kind = "v1beta1"
  end

  # list or watch objects of kind StatefulSet
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a StatefulSet
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified StatefulSet
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified StatefulSet
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end