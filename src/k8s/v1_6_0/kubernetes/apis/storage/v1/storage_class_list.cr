require "yaml"
require "json"

# StorageClassList is a collection of storage classes.
class K8S::V1_6_0::Kubernetes::Apis::Storage::V1::StorageClassList
  # Items is the list of StorageClasses
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Storage::V1::StorageClass)

  # Standard list metadata More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "StorageClassList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Storage::V1::StorageClass), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "StorageClassList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Storage::V1::StorageClass), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "StorageClassList"
    @kind = "v1"
  end

  # list or watch objects of kind StorageClass
  def self.get
    Kubernetes.client.get
  end

  # create a StorageClass
  def self.create(provisioner, metadata = nil, parameters = nil)
  end
end