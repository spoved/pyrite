require "yaml"
require "json"

# Represents an empty directory for a pod.Empty directory volumes support ownership management and SELinux relabeling.
class K8S::V1_6_0::Kubernetes::Api::V1::EmptyDirVolumeSource
  # What type of storage medium should back this directory.The default is "" which means to use the node's default medium.Must be an empty string (default) or Memory.More info: http://kubernetes.io/docs/user-guide/volumes#emptydir
  property medium : String?

  YAML.mapping({medium: {type: String, nilable: true, key: medium, getter: false, setter: false}}, true)

  JSON.mapping({medium: {type: String, nilable: true, key: medium, getter: false, setter: false}}, true)

  def initialize(@medium = nil)
  end
end