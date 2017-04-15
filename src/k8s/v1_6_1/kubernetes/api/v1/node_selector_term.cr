require "yaml"
require "json"

# A null or empty node selector term matches no objects.
class K8S::V1_6_1::Kubernetes::Api::V1::NodeSelectorTerm
  # Required.A list of node selector requirements.The requirements are ANDed.
  property match_expressions : Array(::K8S::V1_6_1::Kubernetes::Api::V1::NodeSelectorRequirement)

  YAML.mapping({match_expressions: {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::NodeSelectorRequirement), nilable: false, key: matchExpressions, getter: false, setter: false}}, true)

  JSON.mapping({match_expressions: {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::NodeSelectorRequirement), nilable: false, key: matchExpressions, getter: false, setter: false}}, true)

  def initialize(@match_expressions)
  end
end