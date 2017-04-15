require "yaml"
require "json"

# ThirdPartyResourceList is a list of ThirdPartyResources.
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResourceList
  # Items is the list of ThirdPartyResources.
  property items : Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource)

  # Standard list metadata.
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ThirdPartyResourceList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ThirdPartyResourceList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ThirdPartyResourceList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind ThirdPartyResource
  def self.get
    Kubernetes.client.get
  end

  # create a ThirdPartyResource
  def self.create(description = nil, metadata = nil, versions = nil)
  end
end