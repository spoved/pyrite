# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DaemonSetSpec is the specification of a daemon set.
  class Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec
    # The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
    property min_ready_seconds : Int32 | Nil

    # A label query over pods that are managed by the daemon set. Must match in order to be controlled. If empty, defaulted to labels on Pod template. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # An object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [http://kubernetes.io/docs/user-guide/replication-controller#pod-template](http://kubernetes.io/docs/user-guide/replication-controller#pod-template)
    property template : Kubernetes::Api::V1::PodTemplateSpec

    # A sequence number representing a specific generation of the template. Populated by the system. It can be set only during the creation.
    property template_generation : Int32 | Nil

    # An update strategy to replace existing DaemonSet pods with new pods.
    property update_strategy : Kubernetes::Apis::Extensions::V1beta1::DaemonSetUpdateStrategy | Nil

    ::YAML.mapping({
      min_ready_seconds:   {type: Int32, nilable: true, key: "minReadySeconds", getter: false, setter: false},
      selector:            {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      template:            {type: Kubernetes::Api::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
      template_generation: {type: Int32, nilable: true, key: "templateGeneration", getter: false, setter: false},
      update_strategy:     {type: Kubernetes::Apis::Extensions::V1beta1::DaemonSetUpdateStrategy, nilable: true, key: "updateStrategy", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      min_ready_seconds:   {type: Int32, nilable: true, key: "minReadySeconds", getter: false, setter: false},
      selector:            {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      template:            {type: Kubernetes::Api::V1::PodTemplateSpec, nilable: false, key: "template", getter: false, setter: false},
      template_generation: {type: Int32, nilable: true, key: "templateGeneration", getter: false, setter: false},
      update_strategy:     {type: Kubernetes::Apis::Extensions::V1beta1::DaemonSetUpdateStrategy, nilable: true, key: "updateStrategy", getter: false, setter: false},
    }, true)

    def initialize(*, @template : Kubernetes::Api::V1::PodTemplateSpec, @min_ready_seconds : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @template_generation : Int32 | Nil = nil, @update_strategy : Kubernetes::Apis::Extensions::V1beta1::DaemonSetUpdateStrategy | Nil = nil)
    end
  end
end
