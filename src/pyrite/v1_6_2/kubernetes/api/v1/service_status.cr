# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # ServiceStatus represents the current status of a service.
  class Definitions::Kubernetes::Api::V1::ServiceStatus
    # LoadBalancer contains the current status of the load-balancer, if one is present.
    property load_balancer : Kubernetes::Api::V1::LoadBalancerStatus

    YAML.mapping({load_balancer: {type: Kubernetes::Api::V1::LoadBalancerStatus, nilable: true, key: loadBalancer, getter: false, setter: false}}, true)

    JSON.mapping({load_balancer: {type: Kubernetes::Api::V1::LoadBalancerStatus, nilable: true, key: loadBalancer, getter: false, setter: false}}, true)

    def initialize(@load_balancer : Kubernetes::Api::V1::LoadBalancerStatus = nil)
    end
  end
end