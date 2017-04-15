require "yaml"
require "json"

# ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
class K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaSpec
  # Hard is the set of desired hard limits for each named resource.More info: http://releases.k8s.io/HEAD/docs/design/admission_control_resource_quota.md#admissioncontrol-plugin-resourcequota
  property hard : Hash(String, String)?

  # A collection of filters that must match each object tracked by a quota.If not specified, the quota matches all objects.
  property scopes : Array(String)?

  YAML.mapping({hard:   {type: Hash(String, String), nilable: true, key: hard, getter: false, setter: false},
                scopes: {type: Array(String), nilable: true, key: scopes, getter: false, setter: false}}, true)

  JSON.mapping({hard:   {type: Hash(String, String), nilable: true, key: hard, getter: false, setter: false},
                scopes: {type: Array(String), nilable: true, key: scopes, getter: false, setter: false}}, true)

  def initialize(@hard = nil, @scopes = nil)
  end
end