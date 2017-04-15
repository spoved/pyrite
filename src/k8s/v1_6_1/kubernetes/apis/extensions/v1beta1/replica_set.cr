require "yaml"
require "json"

# ReplicaSet represents the configuration of a ReplicaSet.
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSet
  # If the Labels of a ReplicaSet are empty, they are defaulted to be the same as the Pod(s) that the ReplicaSet manages.Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the specification of the desired behavior of the ReplicaSet.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetSpec

  # Status is the most recently observed status of the ReplicaSet.This data may be out of date by some window of time.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetStatus

  YAML.mapping({
    api_version: {type: String, default: "ReplicaSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ReplicaSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "ReplicaSet"
    @kind = "v1beta1"
  end

  # list or watch objects of kind ReplicaSet
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a ReplicaSet
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified ReplicaSet
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified ReplicaSet
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end