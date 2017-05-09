# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # DeploymentSpec is the specification of the desired behavior of the Deployment.
  class Definitions::V1beta1::DeploymentSpec
    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    property min_ready_seconds : Int32?

    # Indicates that the deployment is paused and will not be processed by the deployment controller.
    property paused : Bool?

    # The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Once autoRollback is implemented, the deployment controller will automatically rollback failed deployments. Note that progress will not be estimated during the time a deployment is paused. This is not set by default.
    property progress_deadline_seconds : Int32?

    # Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
    property replicas : Int32?

    # The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified.
    property revision_history_limit : Int32?

    # The config this deployment is rolling back to. Will be cleared after rollback is done.
    property rollback_to : V1beta1::RollbackConfig

    # Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment.
    property selector : Unversioned::LabelSelector

    # The deployment strategy to use to replace existing pods with new ones.
    property strategy : V1beta1::DeploymentStrategy

    # Template describes the pods that will be created.
    property template : V1::PodTemplateSpec

    YAML.mapping({min_ready_seconds:         {type: Int32, nilable: true, key: minReadySeconds, getter: false, setter: false},
                  paused:                    {type: Bool, nilable: true, key: paused, getter: false, setter: false},
                  progress_deadline_seconds: {type: Int32, nilable: true, key: progressDeadlineSeconds, getter: false, setter: false},
                  replicas:                  {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                  revision_history_limit:    {type: Int32, nilable: true, key: revisionHistoryLimit, getter: false, setter: false},
                  rollback_to:               {type: V1beta1::RollbackConfig, nilable: true, key: rollbackTo, getter: false, setter: false},
                  selector:                  {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  strategy:                  {type: V1beta1::DeploymentStrategy, nilable: true, key: strategy, getter: false, setter: false},
                  template:                  {type: V1::PodTemplateSpec, nilable: false, key: template, getter: false, setter: false}}, true)

    JSON.mapping({min_ready_seconds:         {type: Int32, nilable: true, key: minReadySeconds, getter: false, setter: false},
                  paused:                    {type: Bool, nilable: true, key: paused, getter: false, setter: false},
                  progress_deadline_seconds: {type: Int32, nilable: true, key: progressDeadlineSeconds, getter: false, setter: false},
                  replicas:                  {type: Int32, nilable: true, key: replicas, getter: false, setter: false},
                  revision_history_limit:    {type: Int32, nilable: true, key: revisionHistoryLimit, getter: false, setter: false},
                  rollback_to:               {type: V1beta1::RollbackConfig, nilable: true, key: rollbackTo, getter: false, setter: false},
                  selector:                  {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  strategy:                  {type: V1beta1::DeploymentStrategy, nilable: true, key: strategy, getter: false, setter: false},
                  template:                  {type: V1::PodTemplateSpec, nilable: false, key: template, getter: false, setter: false}}, true)

    def initialize(@min_ready_seconds : Int32? = nil, @paused : Bool? = nil, @progress_deadline_seconds : Int32? = nil, @replicas : Int32? = nil, @revision_history_limit : Int32? = nil, @rollback_to : V1beta1::RollbackConfig = nil, @selector : Unversioned::LabelSelector = nil, @strategy : V1beta1::DeploymentStrategy = nil, @template : V1::PodTemplateSpec = nil)
    end
  end
end