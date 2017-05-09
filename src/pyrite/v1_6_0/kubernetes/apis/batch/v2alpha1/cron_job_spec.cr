# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # CronJobSpec describes how the job execution will look like and when it will actually run.
  class Definitions::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec
    # ConcurrencyPolicy specifies how to treat concurrent executions of a Job.
    property concurrency_policy : String?

    # The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified.
    property failed_jobs_history_limit : Int32?

    # JobTemplate is the object that describes the job that will be created when executing a CronJob.
    property job_template : Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec

    # Schedule contains the schedule in Cron format, see [https://en.wikipedia.org/wiki/Cron.](https://en.wikipedia.org/wiki/Cron.)
    property schedule : String

    # Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
    property starting_deadline_seconds : Int32?

    # The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified.
    property successful_jobs_history_limit : Int32?

    # Suspend flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
    property suspend : Bool?

    YAML.mapping({concurrency_policy:            {type: String, nilable: true, key: concurrencyPolicy, getter: false, setter: false},
                  failed_jobs_history_limit:     {type: Int32, nilable: true, key: failedJobsHistoryLimit, getter: false, setter: false},
                  job_template:                  {type: Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec, nilable: false, key: jobTemplate, getter: false, setter: false},
                  schedule:                      {type: String, nilable: false, key: schedule, getter: false, setter: false},
                  starting_deadline_seconds:     {type: Int32, nilable: true, key: startingDeadlineSeconds, getter: false, setter: false},
                  successful_jobs_history_limit: {type: Int32, nilable: true, key: successfulJobsHistoryLimit, getter: false, setter: false},
                  suspend:                       {type: Bool, nilable: true, key: suspend, getter: false, setter: false}}, true)

    JSON.mapping({concurrency_policy:            {type: String, nilable: true, key: concurrencyPolicy, getter: false, setter: false},
                  failed_jobs_history_limit:     {type: Int32, nilable: true, key: failedJobsHistoryLimit, getter: false, setter: false},
                  job_template:                  {type: Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec, nilable: false, key: jobTemplate, getter: false, setter: false},
                  schedule:                      {type: String, nilable: false, key: schedule, getter: false, setter: false},
                  starting_deadline_seconds:     {type: Int32, nilable: true, key: startingDeadlineSeconds, getter: false, setter: false},
                  successful_jobs_history_limit: {type: Int32, nilable: true, key: successfulJobsHistoryLimit, getter: false, setter: false},
                  suspend:                       {type: Bool, nilable: true, key: suspend, getter: false, setter: false}}, true)

    def initialize(@concurrency_policy : String? = nil, @failed_jobs_history_limit : Int32? = nil, @job_template : Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec = nil, @schedule : String? = nil, @starting_deadline_seconds : Int32? = nil, @successful_jobs_history_limit : Int32? = nil, @suspend : Bool? = nil)
    end
  end
end