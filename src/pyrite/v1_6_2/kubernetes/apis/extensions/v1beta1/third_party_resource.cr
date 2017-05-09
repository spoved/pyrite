# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # A ThirdPartyResource is a generic representation of a resource, it is used by add-ons and plugins to add new resource types to the API.  It consists of one or more Versions of the api.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource
    # Description is the description of this object.
    property description : String?

    # Standard object metadata
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Versions are versions for this third party object
    property versions : Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion)?

    YAML.mapping({
      api_version: {type: String, default: "ThirdPartyResource", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      description: {type: String, nilable: true, key: description, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      versions:    {type: Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: versions, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ThirdPartyResource", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      description: {type: String, nilable: true, key: description, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      versions:    {type: Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: versions, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @description : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @versions : Array? = nil)
      @api_version = "extensions/v1beta1"
      @kind = "ThirdPartyResource"
    end
  end

  module Resources::Extensions::V1beta1
    include Resource
    alias ThirdPartyResource = Definitions::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource
  end
end