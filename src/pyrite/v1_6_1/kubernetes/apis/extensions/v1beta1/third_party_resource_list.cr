# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # ThirdPartyResourceList is a list of ThirdPartyResources.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResourceList
    # Items is the list of ThirdPartyResources.
    property items : Array(Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource)

    # Standard list metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "ThirdPartyResourceList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ThirdPartyResourceList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "extensions/v1beta1"
      @kind = "ThirdPartyResourceList"
    end
  end

  module Resources::Extensions::V1beta1
    include Resource
    alias ThirdPartyResourceList = Definitions::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResourceList
  end
end