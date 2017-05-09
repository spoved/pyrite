# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # CronJobStatus represents the current state of a cron job.
  class Definitions::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus
    # Active holds pointers to currently running jobs.
    property active : Array(Kubernetes::Api::V1::ObjectReference)?

    # LastScheduleTime keeps information of when was the last time the job was successfully scheduled.
    property last_schedule_time : Apimachinery::Apis::Meta::V1::Time

    YAML.mapping({active:             {type: Array(Kubernetes::Api::V1::ObjectReference), nilable: true, key: active, getter: false, setter: false},
                  last_schedule_time: {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastScheduleTime, getter: false, setter: false}}, true)

    JSON.mapping({active:             {type: Array(Kubernetes::Api::V1::ObjectReference), nilable: true, key: active, getter: false, setter: false},
                  last_schedule_time: {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: lastScheduleTime, getter: false, setter: false}}, true)

    def initialize(@active : Array? = nil, @last_schedule_time : Apimachinery::Apis::Meta::V1::Time = nil)
    end
  end
end