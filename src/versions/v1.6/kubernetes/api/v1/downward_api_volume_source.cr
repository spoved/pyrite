# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
  class Kubernetes::Api::V1::DownwardAPIVolumeSource
    # Optional: mode bits to use on created files by default. Must be a value between 0 and 0777. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    property default_mode : Int32 | Nil

    # Items is a list of downward API volume file
    property items : Array(Kubernetes::Api::V1::DownwardAPIVolumeFile) | Nil

    ::YAML.mapping({
      default_mode: {type: Int32, nilable: true, key: "defaultMode", getter: false, setter: false},
      items:        {type: Array(Kubernetes::Api::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      default_mode: {type: Int32, nilable: true, key: "defaultMode", getter: false, setter: false},
      items:        {type: Array(Kubernetes::Api::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    def initialize(*, @default_mode : Int32 | Nil = nil, @items : Array | Nil = nil)
    end
  end
end
