require "yaml"
require "json"

# AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
class K8S::V1_6_1::Kubernetes::Api::V1::AzureFileVolumeSource
  # Defaults to false (read/write).ReadOnly here will force the ReadOnly setting in VolumeMounts.
  property read_only : Bool?

  # the name of secret that contains Azure Storage Account Name and Key
  property secret_name : String

  # Share Name
  property share_name : String

  YAML.mapping({read_only:   {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                secret_name: {type: String, nilable: false, key: secretName, getter: false, setter: false},
                share_name:  {type: String, nilable: false, key: shareName, getter: false, setter: false}}, true)

  JSON.mapping({read_only:   {type: Bool, nilable: true, key: readOnly, getter: false, setter: false},
                secret_name: {type: String, nilable: false, key: secretName, getter: false, setter: false},
                share_name:  {type: String, nilable: false, key: shareName, getter: false, setter: false}}, true)

  def initialize(@secret_name, @share_name, @read_only = nil)
  end
end