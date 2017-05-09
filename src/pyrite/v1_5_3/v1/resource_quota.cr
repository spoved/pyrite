# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # ResourceQuota sets aggregate quota restrictions enforced per namespace
  class Definitions::V1::ResourceQuota
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec defines the desired quota. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V1::ResourceQuotaSpec

    # Status defines the actual enforced quota and its current usage. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : V1::ResourceQuotaStatus

    YAML.mapping({
      api_version: {type: String, default: "ResourceQuota", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1::ResourceQuotaSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1::ResourceQuotaStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ResourceQuota", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1::ResourceQuotaSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1::ResourceQuotaStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1::ResourceQuotaSpec = nil, @status : V1::ResourceQuotaStatus = nil)
      @api_version = "v1"
      @kind = "ResourceQuota"
    end
  end

  module Resources::V1
    include Resource
    alias ResourceQuota = Definitions::V1::ResourceQuota
  end
end