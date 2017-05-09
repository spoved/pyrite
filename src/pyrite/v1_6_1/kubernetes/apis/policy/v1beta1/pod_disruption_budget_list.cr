# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # PodDisruptionBudgetList is a collection of PodDisruptionBudgets.
  class Definitions::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetList
    property items : Array(Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget)

    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "PodDisruptionBudgetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "PodDisruptionBudgetList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "policy/v1beta1"
      @kind = "PodDisruptionBudgetList"
    end
  end

  module Resources::Policy::V1beta1
    include Resource
    alias PodDisruptionBudgetList = Definitions::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetList
  end
end