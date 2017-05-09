# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
  #
  # StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
  class Definitions::Kubernetes::Apis::Storage::V1::StorageClass
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    property parameters : Hash(String, String)?

    # Provisioner indicates the type of the provisioner.
    property provisioner : String

    YAML.mapping({
      api_version: {type: String, default: "StorageClass", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      parameters:  {type: Hash(String, String), nilable: true, key: parameters, getter: false, setter: false},
      provisioner: {type: String, nilable: false, key: provisioner, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "StorageClass", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      parameters:  {type: Hash(String, String), nilable: true, key: parameters, getter: false, setter: false},
      provisioner: {type: String, nilable: false, key: provisioner, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @parameters : Hash(String, String)? = nil, @provisioner : String? = nil)
      @api_version = "storage/v1"
      @kind = "StorageClass"
    end
  end

  module Resources::Storage::V1
    include Resource
    alias StorageClass = Definitions::Kubernetes::Apis::Storage::V1::StorageClass
  end
end